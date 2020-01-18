class ResultsController < ApplicationController
  def index
    @search_results = PgSearch.multisearch(params[:query])
    Result.find_or_create_by(user_id: current_user.id, content: params[:query]) 
  end

  def new
  	@result = Results.new
  end

  def create
    @result = Result.new(user_id: current_user.id, content: params[:query]) 
  end
end