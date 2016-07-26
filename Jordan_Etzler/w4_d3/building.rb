require './apartment.rb'
require './person.rb'

class Building

  attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors

  def initialize(person, apartment, address, style, has_doorman, is_walkup, num_floors)

    @person = person
    @apartment = apartment

    @address = address
    @style = style
    @has_doorman = has_doorman
    @is_walkup = is_walkup
    @num_floors = num_floors.to_i

  end

  def to_s
    "#{@address} is a #{@style} building, with #{@num_floors} floors"
  end

end
