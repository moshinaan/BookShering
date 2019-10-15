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

  def create
    @book = CollectionBooksForm.new Book.new
    params[:book][:user_id] = current_user.id
    if @book.submit params[:book]
      redirect_to book_path 
    else
      render 'new'
    end
  end
end
