class UsersController < ApplicationController
  
  # def logged_in?
  #   session[:user]
  # end

  def signup_display
    render "signup"
  end
  
  def signup   
    User.create!(user_params)
  end

  def login
    user = User.find_by_user_name(params[:user][:user_name])
    if user && User.authenticate(params[:user][:password])
        oldcount = user.login_count
        user.update_attributes(:login_count => oldcount + 1)
        render 'count/count'
        # redirect_to user_path(user)
    else
      flash[:notice] = "User or password is invalid"
    end
  end

 private

  def user_params
    params.require(:user).permit(:user_name, :password)
  end

end
