require './animal.rb'
require './client.rb'

class Shelter

  attr_accessor :name, :address, :clients, :animals

  def initialize
    puts "Enter shelter name:"
    @name = gets.chomp
    puts "Enter shelter address:"
    @address = gets.chomp
    @clients = []
    @animals_shelter = []
  end

  def add_clients(client_name)
    @clients.push(client_name)
  end

  def add_animals(animal_name)
    @animals_shelter << animal_name
  end


  def remove_clients(client_name)
    @clients.delete(client_name)
  end

  def remove_animals(animal_name)
    @animals_shelter.delete(animal_name)
  end



  def display_clients
    p "Clients in shelter db: #{@clients}"
  end

  def display_animals
    p "Animals in shelter: #{@animals_shelter}"
  end


end
