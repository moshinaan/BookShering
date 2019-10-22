module Concerns
  module LocalAuthManagement
  	def current_user
  	 User.find_by id: session[:user_id]
  	end
    def authenticate
      unless current_user
        redirect_to sessions_new_path
      end
    end
  end
end
