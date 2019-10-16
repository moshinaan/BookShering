class HeadingController < ApplicationController

	def index
      @headings = Heading.all.map.pluck(:name, :id) do |h|
      	HeadingDecorator.new  h
      end
	end

	def show
	  @books = Book.where(heading_id:  params[:id]).map do |h|
	  	BookDecorator.new  h
	  end
	end
end
