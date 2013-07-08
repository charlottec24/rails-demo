class User < ActiveRecord::Base

	def self.create_user(user_name, password)
    	User.create(user_name: user_name, password: password)
  	end  

end
