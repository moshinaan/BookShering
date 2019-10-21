module Concerns
  module LocalAuthManagement
    def authenticate
      unless current_user
        redirect_to sessions_new_path
      end
    end
  end
end
