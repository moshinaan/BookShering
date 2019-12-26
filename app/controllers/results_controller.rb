class ResultsController < ApplicationController
  def index
    @search_results = Book.search_everywhere(params[:query])
  end
end