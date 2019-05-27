class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
    @author_id = @book.author_id
    @author = Author.where(:id => @author_id )
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
