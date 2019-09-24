class BooksController < ApplicationController
  before_action :authenticate, only: [:new, :create]

  def index
    @books = Book.all.page(10).per(10)
  end

  def show
    @book = Web::BookDecorator.new Book.find(params[:id])
  end

  def new
    @book = CollectionBooksForm.new Book.new
  end

  def update
    @book_form = BookForm.new Book.find params[:id]
    if @book_form.submit book_params[:status => 'недоступен']
       redirect_to book_path user_path current_user
    else 
      render "index"
    end 
  end

  def create
    @book = CollectionBooksForm.new Book.new
    params[:book][:user_id] = current_user.id
    params[:book][:user_current] = current_user.id
    if @book.submit params[:book]
      redirect_to book_path user_path current_user
    else
      render 'new'
    end
  end

  private
  def book_params
    params.require(:book).permit(:name, :author, :publisher , :year_publishing, :age_restrictions,
      :user, :status,:current_user)
  end 
end
