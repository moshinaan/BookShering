class PublisherController < ApplicationController
  def index
	@publishers = Publisher.all.map.pluck(:name, :id) do |h|
	  PublisherDecorator.new h
	end
  end

  def show
	@books = Book.where(publisher_id:  params[:id]).map do |h|
	  BookDecorator.new  h
    end
  end
end
