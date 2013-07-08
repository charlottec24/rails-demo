class User < ActiveRecord::Base

	def self.create_user(user_name, password, counter)
    	User.create(user_name: user_name, password: password, counter: counter)
  	end  

end
