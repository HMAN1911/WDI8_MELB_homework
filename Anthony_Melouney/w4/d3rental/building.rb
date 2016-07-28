require 'pry'

class Building

  attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments

  def initialize(address, style, has_doorman, is_walkup, num_floors) #may need apartments
    @address = address
    @style = style
    @has_doorman = true
    @is_walkup = true
    @num_floors = num_floors
    @apartments = [] #may not need to include
  end

  def to_s
    p "Address: #{@address} Doorman: #{@has_doorman} Walkup: #{@is_walkup } Floors: #{@num_floors} Apartments: #{@apartments}"
  end
end

binding.pry
