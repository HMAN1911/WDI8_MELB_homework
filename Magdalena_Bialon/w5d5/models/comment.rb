class Comment < ActiveRecord::Base
  validates :post, presence:true, allow_blank: false
  belongs_to :dish

end
