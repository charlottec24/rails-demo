class CreateController < ApplicationController
  def signup
  	User.create_user(params[:user_name], params[:email], params[:password])
  end
end
