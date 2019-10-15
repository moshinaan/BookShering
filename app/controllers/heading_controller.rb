class HeadingController < ApplicationController
	def index
      @heading = HeadingDecorator.new  Heading.all

      binding.pry
	end
end
