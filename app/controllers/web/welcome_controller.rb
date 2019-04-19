class Web::WelcomeController < ApplicationController
	layout 'tramway/landing/application'
	def index
		@blocks = ::Tramway::Landing::BlockDecorator.decorate ::Tramway::Landing::Block.on_main_page
		@links = []
	end
end
