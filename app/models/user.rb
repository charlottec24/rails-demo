class User < ActiveRecord::Base

  # def password
  #   @hashed_password ||= Password.new(password_hash)
  # end

  # def password=(unhashed_password)
  #   @hashed_password = Password.create(unhashed_password)
  #   self.password_hash = @hashed_password
  # end  

  def self.authenticate(password)
    User.find_by_password(password)
  end

end
