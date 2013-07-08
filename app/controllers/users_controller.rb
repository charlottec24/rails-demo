class UsersController < ApplicationController
  
  # def logged_in?
  # 	session[:user]
  # end
  
  def signup
  	User.create_user(params[:user_name], params[:password])
  end

end
