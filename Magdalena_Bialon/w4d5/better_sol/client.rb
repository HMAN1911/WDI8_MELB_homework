require 'pry'

class Client
  attr_accessor :name, :children, :age, :existing_pets, :pets

  def initialize(name, children, age, existing_pets)
    @name = name
    @children = children
    @age = age
    @existing_pets = existing_pets
    @pets = {}
  end


  def add_pet(animal)
    key = animal.name
    @pets[key] = animal
    puts  name + " has adopted " + animal.name
  end

  def remove_pet(animal)
    $shelter[:animals][animal] = @pets[animal]
    @pets.delete(animal)
  end

end
