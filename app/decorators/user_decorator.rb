class UserDecorator < Tramway::Core::ApplicationDecorator
	class << self
		def collections
			[:all]
		end
	end
	decorate_association :books
	decorate_association :bookcases
end