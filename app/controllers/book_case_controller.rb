class BookCaseController < ApplicationController
	
	before_action :authenticate, only: [:new, :create]
	def new
	   @bookcase = Bookcase.new
	end 

	def create
	  @bookcase = Bookcase.new(user_id: current_user.id, book_id: "1", taken_at: Time.now )
	  if @bookcase.save
	  else
	  	render 'welcome#index'
	  end
	end
end
