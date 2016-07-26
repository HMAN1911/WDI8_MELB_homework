require 'pry'
require './client'
require './shelter'
require './animal'

@shelter = Shelter.new

response = 'xy'
while response != 'y'


  puts "1 - Create Animal "
  puts "2 - Create Client "
  puts "3 - Display Animals "
  puts "4 - Display Clients "
  puts "5 - Client - Adopt "
  puts "6 - Client - UnAdopt "
  puts "x - Exit "

  response = (gets.chomp)

if (response == '1')
  print 'Enter Animal Name :'
  @name = gets.chomp
  print 'Enter animal age : '
  @age = gets.chomp
  print 'Enter Animal Gender :'
  @gender = gets.chomp
  print 'Enter Animal species :'
  @species = gets.chomp
  animal = Animal.new @name, @age, @gender, @species
  @shelter.addAnimal(animal)

elsif (response == '2')
  print 'Enter Name :'
  @name = gets.chomp
  print 'Enter no of children: '
  @children = gets.chomp
  print 'Enter age:'
  @age = gets.chomp
  client = Client.new @name, @children, @age
  @shelter.addClient(client)

elsif (response == '3')
  @shelter.showAnimals()
elsif (response == '4')
  @shelter.showClients()
elsif (response == '5')
  puts 'Enter Name of animal to adopt:'
  @animaltoAdopt
elsif (response == '6')
  puts '6'
end

end
puts "Exiting... "


binding.pry
=begin

shelter = Shelter.new
client = Client.new('Name',4,1)
animal = Animal.new('Fred', 2, 'M', 'Poodle')
shelter.addClient(client)
shelter.addAnimal(animal)
p shelterp





=end
