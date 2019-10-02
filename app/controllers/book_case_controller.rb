class BookCaseController < ApplicationController
	before_action :authenticate, only: [:new, :create]
	def new
	  
	end

	def create
	  @bookcase = Bookcase.new(user_id: 1 , book_id: 1 , taken_at: Time.now)
	end

	
end
