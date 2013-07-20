class UsersController < ApplicationController
  
  # def logged_in?
  #   !!session[:user_id]
  # end

  def create   
    User.create!(user_params)
    redirect_to root_path
  end

  def new
    @user = User.new
  end  

  def login
    @user = User.find_by_user_name(params[:user][:user_name])
    if @user && User.authenticate(params[:user][:password])
        @oldcount = @user.counter
        @user.update_attributes(:counter => @oldcount + 1)
        session[:user_id] = @user.id
        redirect_to user_path(@user)
    else
      flash[:error] = "User or password is invalid"
    end
  end

  def logout
    session.clear
    redirect_to root_path
  end

private

  def user_params
    params.require(:user).permit(:user_name, :password)
  end
end
