class HeadingController < ApplicationController
	def index
		@headings = Heading.all
		binding.pry
	end
end
