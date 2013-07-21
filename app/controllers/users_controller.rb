class UsersController < ApplicationController
  
  def create   
    User.create!(user_params)
    redirect_to '/'
  end

  def new
    @user = User.new
  end  

  def login
    @user = User.find_by_user_name(params[:user][:user_name])
    if @user && User.authenticate(params[:user][:password])
        @name = @user.user_name
        @count = @user.counter
        @user.update_attributes(:counter => @count += 1)
        session[:user_id] = @user.id
        redirect_to user_path(@user)
    else
      redirect_to root_path
      flash[:notice] = "User or password is invalid"
    end

  end

  def logout
    session.clear
    redirect_to '/'
  end

private

  def user_params
    params.require(:user).permit(:user_name, :password)
  end
end
