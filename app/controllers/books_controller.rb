class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = CollectionBooksForm.new Book.new
  end

  def create
    @book = CollectionBooksForm.new Book.new
    if @book.submit params[:book]
      @book.status = 'не занята'
      redirect_to @book.model
    else
      render 'new'
    end
  end
end
