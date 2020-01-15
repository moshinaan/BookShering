class UsersController < ApplicationController 

  def current_user
    @current_user = current_user
  end

	def show
    @user = User.find(params[:id])

    @books = Book.where(user_id:  params[:id]).map do |h|
      BookDecorator.new  h
    end

    @bookcase = Bookcase.where(user_id:params[:id]).map do |h|
      BookCaseDecorator.new h
    end
    headings = Array.new
    @result = Bookcase.where(user_id:params[:id])
    @result.each do |result|
      headings << result.book.heading_id
    end
    count_h = headings.inject(Hash.new{ 0 }){ |result, i|
      result[i] += 1
      result
    }
    count_h.sort
    @res_h = Array.new
    i = count_h.size
    while i > count_h.size - 3 do
      @res_h << count_h.keys[i-1]
      i=i-1
    end
    @bookrec = Array.new
    @res_h.each do |i|
      @bookrec << Book.where(:heading_id==@res_h[i])
    end
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

