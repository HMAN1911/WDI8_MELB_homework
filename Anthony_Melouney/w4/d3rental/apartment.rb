require'pry'

class Apartment

  attr_accessor :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters

  # def initiailze price=23, is_occupied=true, sqft=435, num_beds=5, num_baths=35, renters=[]
  def initiailze price, is_occupied, sqft, num_beds, num_baths
    @price = price
    @is_occupied = is_occupied
    @sqft = sqft
    @num_beds = num_beds
    @num_baths = num_baths
    @renters = renters
  end

  def to_s
    p "Price: #{@price}"
  end
end

binding.pry
