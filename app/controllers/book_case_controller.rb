class BookCaseController < ApplicationController
	before_action :authenticate, only: [:new, :create]
	def new
	  @bookcase = CollectionBookcasesForm.new Bookcase.new
	end

	def create
	  @bookcase = CollectionBookcasesForm.new Bookcase.new
	  params[:bookcase][:user_id] = current_user.id
	  params[:bookcase] = 1
	  params[:bookcase][:taken_at] = DateTime.now
	end

	
end
