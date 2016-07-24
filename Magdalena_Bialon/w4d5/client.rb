require './shelter.rb'

class Client

  attr_accessor :name, :children, :age, :pets

  def initialize
    puts "Enter client name:"
    @name = gets.chomp
    puts "Enter client number of children: "
    @children = gets.chomp
    puts "Enter client age:"
    @age = gets.chomp
    @pets = {}
    @animals_from_shelter = []
  end


  def add_pets
    puts "Enter pet species:"
    type = gets.chomp
    puts "Eneter pet name:"
    name = gets.chomp

    if @pets[type] == nil
      @pets[type] = [name]
    else
      @pets[type].push(name)
    end

  end


  def add_pets_shelter(animal_name)
    @animals_from_shelter.push(animal_name)
  end


  def remove_pets_shelter(animal_name)
    @animals_from_shelter.delete(animal_name)                  
  end


end
