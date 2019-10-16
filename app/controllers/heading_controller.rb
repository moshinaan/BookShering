class HeadingController < ApplicationController
	def index
      @headings = Heading.all.map.pluck(:name) do |h|
      	HeadingDecorator.new  h
      end
	end
end
