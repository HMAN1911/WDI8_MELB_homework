# require 'pry'

class Building

  attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments

  def initialize(address, style, has_doorman, is_walkup, num_floors, apartments)
    @address = address
    @style = style
    @has_doorman = true
    @is_walkup = true
    @num_floors = num_floors
    @apartments = []
  end

  def to_s
    "#{@address} + #{@has_doorman} + #{@is_walkup } + #{@num_floors} + #{@apartments}"
  end
end

# binding.pry
