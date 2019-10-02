class BookCaseController < ApplicationController
	
	def new
	  @bookcase = CollectionBookcasesForm.new Bookcase.new
	end

	def create
	  @bookcase = CollectionBookcasesForm.new Bookcase.new
	  params[:bookcase][:user_id] = current_user.id
	  params[:bookcase] = 1
	end

	
end
