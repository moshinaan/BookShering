class BooksController < ApplicationController
  before_action :authenticate, only: [:new, :create]
  def index
    @q = Book.ransack(params[:q])
    @books = @q.result.order(:id).page(params[:page]).per(10)
    @result = Result.where(user_id:current_user.id)
  end

  def show
    book_id = params[:id]
    if (Bookcase.find_by book_id:  book_id) && (Bookcase.find_by returned_at: nil)
      @state = 'запрошена'
    else
      @state = 'доступна'
    end
    @book = Web::BookDecorator.new Book.find(book_id)
  end


  def new
    @book = CollectionBooksForm.new Book.new
  end

  def create
    @book = CollectionBooksForm.new Book.new
    params[:book][:user_id] = current_user.id
    if @book.submit params[:book]
      redirect_to current_user 
    else
      render 'new'
    end
  end
end
