class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
  	#найти
  	@user = User.find_by(email: params[:user][:email].downcase)
    
    if @user && @user.authenticate(params[:user][:password])

      #войти
      log_in @user
      # NOTE имплементируем позже
      #params[:session][:remember_me] == '1' ? remember(@user) : forget(@user)
      redirect_to @user

   	else
      
      @user.errors.add(:password, "хуйня ебаная")
      render 'new'
  	end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
