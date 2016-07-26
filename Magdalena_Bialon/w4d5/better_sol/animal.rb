require 'pry'

class Animal
  attr_accessor :name, :species, :age, :gender, :toys

  def initialize(name, species, age, gender, toys)
    @name = name
    @species = species
    @age = age
    @gender = gender
    @toys = [toys]
  end
end
