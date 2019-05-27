class BooksController < ApplicationController
  def show
    @book = Web::BookDecorator.new Book.find(params[:id])
  end

  def new
    @book = CollectionBooksForm.new Book.new
  end

  def create
    @book = CollectionBooksForm.new Book.new
    if @book.submit params[:book]

    else
      render 'new'
    end
  end
end
