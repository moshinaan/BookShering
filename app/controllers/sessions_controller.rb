class SessionsController < ApplicationController
  def new
  end

  def create
  	#найти
  	user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      #войти
      log_in user
      redirect_to user

   	else
      #выдать ошибку
   	  flash.now[:danger] = 'Неверный логин или пароль'
      render 'new'
  	end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
