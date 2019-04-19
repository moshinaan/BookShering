class ApplicationController < ::Tramway::Core::ApplicationController
  protect_from_forgery with: :exception
end
