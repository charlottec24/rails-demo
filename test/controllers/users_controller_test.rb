require '../test_helper'

class UsersControllerTest < ActionController::TestCase
	test "should get signup" do
    	get :signup
    	assert_response :success
  	end

	test "should create user" do
		user = User.create_user("CharlotteC", "charlottemidgley")
		assert user.save
	end  

end
