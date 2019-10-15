class HeadingController < ApplicationController
	def index
      @heading = HeadingDecorator.new  Heading.all
      @heading1= Heading.all
      binding.pry
	end
end
