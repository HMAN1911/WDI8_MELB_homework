require './building.rb'
require './person.rb'

class Apartment

  attr_accessor :price, :is_occupid, :sqft, :num_beds,:num_baths

  def initialize (person, price, is_occupied, sqft, num_beds, num_baths)

    @person = person

    @price = price.to_i
    @is_occupied = is_occupied
    @sqft = sqft.to_i
    @num_beds = num_beds.to_i
    @num_baths = num_baths.to_i
    @renters = []

  end

  def add_renter(person)
    @renters.push(person)
  end

  def to_s
    "#{@person} in an apartment at $#{@price} a week, with #{@sqft}sq/m, #{@num_beds} beds and #{@num_baths}."
  end

end
