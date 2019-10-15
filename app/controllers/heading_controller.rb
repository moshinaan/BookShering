class HeadingController < ApplicationController
	def index
      @heading = Heading.all
	end
end
