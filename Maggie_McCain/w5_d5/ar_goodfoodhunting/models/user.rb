class User < ActiveRecord::Base
  #activerecord has the password digesting function
  has_secure_password
  has_many :dishes #has many is plural. activerecord known method
end

#user.dishes.count

#u1 = User.new
#u1.password = () calls black box function, so when you type u1.password = 'xyz'
#then you search u1, password_digest is populated with garbled password

#u1 = user.find_by(email: 'me@me.com')
#u1.authenticate('unique password') <--if it is wrong, returns false.  else returns user object
