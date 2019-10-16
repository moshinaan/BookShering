class HeadingController < ApplicationController
	def index
      @headings = Heading.all.map.pluck(:name) do |h|
      	HeadingDecorator.new  h
      end
      binding.pry
	end
end
