class ApplicationController < ::Tramway::Core::ApplicationController
  protect_from_forgery with: :exception
  include Concerns::SessionsManagment
  include Concerns::LocalAuthManagement 
end
