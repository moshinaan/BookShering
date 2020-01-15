class ResultsController < ApplicationController
  def index
    @search_results = PgSearch.multisearch(params[:query])
    Result.create(user_id: current_user.id, content: params[:query]) 
  end

  def new
  	@result = Results.new
  end

  def create
    @result = Result.new(user_id: current_user.id, content: params[:query]) 
  end
end