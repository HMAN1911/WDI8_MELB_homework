class User < ActiveRecord::Base
  # validates :name, presence: true, allow_blank: false
  # activerecird has the password digesting function for me :)

  has_secure_password
  has_many :dishes
end































# gem install bcrypt

# [2] pry(main)> ul = User.new
# => #<User:0x007fb60a246720 id: nil, email: nil, password_digest: nil>
# [3] pry(main)> ul.password
# => nil
# [4] pry(main)> ul.password = 'pudding'
# => "pudding"
# [5] pry(main)> ul
# => #<User:0x007fb60a246720
#  id: nil,
#  email: nil,
#  password_digest: "$2a$10$mDnN8Ge8UCwjlE1Dg86IQe0pnrTOuQAhIjCBhu0yBxscCQrc142yi">
# [6] pry(main)>
# [7] pry(main)> ul.email = 'dt@ga.co'
# [9] pry(main)> ul.save
# [10] pry(main)> ul
# => #<User:0x007fb60a246720
#  id: 1,
#  email: "dt@ga.co",


# [11] pry(main)> ul = User.find_by(email: "dt@ga.co')"    // overiding


#                         *******    IMPORTANT    S*********
# [12] pry(main)> ul.authenticate('cake')
# => false
# [13] pry(main)> ul.authenticate('pudding')
# => #<User:0x007fb60a246720
#  id: 1,
#  email: "dt@ga.co",
#  password_digest: "$2a$10$mDnN8Ge8UCwjlE1Dg86IQe0pnrTOuQAhIjCBhu0yBxscCQrc142yi">
# [14] pry(main)>







#  has_many :dishes
# [1] pry(main)> user = User.first
# => #<User:0x007fbd4d05e5a8 id: 1, email: "dt@ga.co", password_digest: "$2a$10$mDnN8Ge8UCwjlE1Dg86IQe0pnrTOuQAhIjCBhu0yBxscCQrc142yi">
# [2] pry(main)> user.dishes
# => [#<Dish:0x007fbd4b80c3b0 id: 22, name: "test user", img_url: nil, user_id: 1>]
# [4] pry(main)> user.dishes.count
# => 1
# [5] pry(main)> user.dishes[0]
# => #<Dish:0x007fbd4b80c3b0 id: 22, name: "test user", img_url: nil, user_id: 1>
