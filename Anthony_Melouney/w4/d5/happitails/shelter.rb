require 'pry'

class Shelter

  def initialize
    @clients = []
    @animals = []
  end

  def add_clients(client_name)
      @clients.push(client_name)
    end

  def add_animals(animal_name)
    @animals << animal_name
  end

  # shelter = Shelter.new
  # shelter.add_clients(JoeBlow)
  # shelter.add_animals(StrayCat)
  # p shelter
end

binding.pry
