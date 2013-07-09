require 'spec_helper'

include UserControllerSpecHelper

describe UsersController, :type => :feature do

	it "should login a user and display their username" do
		visit '/'
		login_user
		page.should have_content("Steve11")
	end


end
