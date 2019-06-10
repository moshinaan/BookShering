module Concerns::AuthManagment
  def authenticate
    unless current_user
      redirect_to sessions_new_path
    end
  end
end
