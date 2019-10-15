class BookCaseController < ApplicationController
	
	before_action :authenticate, only: [:new, :create]
	def new
	   @bookcase = Bookcase.new
	end 

	def create
	  @bookcase = Bookcase.new(user_id: current_user.id, book_id: params[:id], taken_at: Time.now )
	  if @bookcase.save
	  	redirect_back(fallback_location: root_path)
	  else
	  	render 'welcome#index'
	  end
	end
end
