class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
  	#найти
  	@user = User.find_by(email: params[:user][:email].downcase)
    
    if @user && @user.authenticate(params[:user][:password])
      @current_user=current_user 
      #войти
      log_in @user
      # NOTE имплементируем позже
      #params[:session][:remember_me] == '1' ? remember(@user) : forget(@user)
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
