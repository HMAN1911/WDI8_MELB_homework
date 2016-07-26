# NOT MY SOLUTION - it is Maggie's Mccain
# I put it here so that it's all in one folder and I can see how nice and simply her is :)
# I hope it's not a problem


require 'pry'
require './animal'
require './client'

$shelter = {
  clients: {},
  animals: {}
}


puts 'WELCOME TO HAPPITAILS SHELTER'

loop do
  print "Enter: display clients, display animals, create animal, create client, adopt, or put up for adoption to continue..."
  response = gets.chomp

  if response == 'create animal'
    print 'Enter animal\'s name: '
    name = gets.chomp
    print 'Enter animal\'s species: '
    species = gets.chomp
    print 'Enter animal\'s age: '
    age = gets.chomp
    print 'Enter gender: '
    gender = gets.chomp
    print 'Enter favourite toys: '
    toys = gets.chomp
    $shelter[:animals][name] = Animal.new(name, species, age, gender, toys)
    puts $shelter[:animals][name].name + " the " + $shelter[:animals][name].species + " has joined the shelter"

  elsif response == 'create client'
    print 'Enter client name: '
    name = gets.chomp
    print 'Enter client\'s number of children: '
    children = gets.chomp
    print 'Enter client\'s age: '
    age = gets.chomp
    print 'How many pets client already have? '
    existing_pets = gets.chomp
    $shelter[:clients][name] = Client.new(name, children, age, existing_pets)
    puts "Welcome " + $shelter[:clients][name].name + "! CLIENT in client database."

  elsif response == 'adopt'
    puts 'Enter Client name: '
    client = gets.chomp
    puts 'Enter animal name for adoption: '
    animal = gets.chomp
    if $shelter[:animals].include? animal
      $shelter[:clients][client].add_pet($shelter[:animals][animal])
      $shelter[:animals].delete(animal)
    else
      puts 'Sorry, no animal in animal database'
    end

  elsif response == 'put up for adoption'
    puts 'Enter Client name: '
    client = gets.chomp
    puts 'Enter animal name to give back '
    animal = gets.chomp
    # binding.pry
    $shelter[:clients][client].remove_pet(animal)
    puts "OH NO!  Sorry " + $shelter[:animals][animal].name

  elsif response == 'display animals'
    if $shelter[:animals] == {}
      puts 'Sorry, animal database is empty'
    else
      puts $shelter[:animals].map{|key| print key[1].name + " is a " + key[1].age + ' year old ' + key[1].species + " who likes to play with " + key[1].toys.to_s + ".  "}
      puts $shelter[:animals]
    end

  elsif response == 'display clients'
    if $shelter[:clients] == {}
      puts 'Sorry, client database is empty'
    else
      puts $shelter[:clients].map{|key| print key[1].name}
      puts $shelter[:clients]
    end
  else
    puts 'Sorry, what is your request...?  Please try again'
  end
end
