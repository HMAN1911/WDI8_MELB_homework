class Dish < ActiveRecord::Base
  validates :name, presence:true, allow_blank: false
  belongs_to :user #only one is singular. method built into activerecord
  has_many :comments
end

#dish.user.email
