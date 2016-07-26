require 'pry'

class Client

  attr_accessor :name, :children, :age, :otherPets

  def initialize(name, children, age, otherPets)
    @name = name
    @children = children
    @age = age
    @otherPets = otherPets
  end

end