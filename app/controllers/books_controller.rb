class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
    @author_id = @book.author_id # зачем тебе @author_id, ты используешь его во вьюхе?
    @author = Author.where(:id => @author_id ) # отдельно запрашивать автора не нужно, у тебя же есть связи между моделями. Иди в модель Book
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
