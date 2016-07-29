class Comment < ActiveRecord::Base
  validates :content, presence:true, allow_blank: false
  belongs_to :dish
end
