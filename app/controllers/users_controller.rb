class UsersController < ApplicationController

  def current_user
    @current_user = current_user
  end

	def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
   	@user = User.new(user_params)

		if @user.save
      @user.errors.add(:password, "Введите пароль для авторизации")
			render 'sessions/new'
		else
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :date_birth, :city, 
      :password,:password_confirmation)
  end
end

