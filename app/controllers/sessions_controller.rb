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
      @current_user = current_user
      redirect_to @user
   	else  
      if @user.class == NilClass
        @user = User.first
        @user.errors.add(:email, "неверный email")
        render 'new'
      else
        @user.errors.add(:password, "неверный пароль")
        render 'new'
      end
  	end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
