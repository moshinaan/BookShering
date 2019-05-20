class BooksController < ApplicationController
  def show
    book = Book.find(params[:id])
  end

  def new
  	@book=Book.new
  end

  def create
  	@book=Book.new(book_params)
  end

  private
  def book_params
  	params.require(:book).permit(:name, :author_id, :publishing,:year_publishing,:age_restrictions,
  		:user_id,:user_curren)

  end
end
