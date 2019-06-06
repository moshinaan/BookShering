class SessionsController < ApplicationController
  def new
  end

  def create
  	#найти
  	@user = User.find_by(email: params[:session][:email].downcase)
    
    if @user && @user.authenticate(params[:session][:password])

      #войти
      log_in user
      params[:session][:remember_me] == '1' ? remember(@user) : forget(@user)
      redirect_to @user

   	else
      
      @user.errors.add(:password, "хуйня ебаная")
      binding.pry
      render 'new'
  	end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
