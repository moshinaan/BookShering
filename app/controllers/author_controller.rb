class AuthorController < ApplicationController
	
	def index
	  @authors = Author.all.map.pluck(:name, :id) do |h|
	  	AuthorDecorator.new h
	  end
	end

	def show
	  @books = Book.where(author_id:  params[:id]).map do |h|
	  	BookDecorator.new  h
	  end
	end
		
	def new
	end

	def create
	end

	def destroy
	end
end


