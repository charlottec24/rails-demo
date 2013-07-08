require '../test_helper'

class CreateControllerTest < ActionController::TestCase
	test "should get signup" do
    	get :signup
    	assert_response :success
  	end

	test "should create user" do
		user = User.create_user("CharlotteC", "charlottemidgley", 1)
		assert user.save
	end  

end
