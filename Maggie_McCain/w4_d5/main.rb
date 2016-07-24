require 'pry'
require './animal'
require './client'
#global variable in ruby is $variable_name 
$shelter = {clients: {}, animals: {}}

puts 'WELCOME TO HAPPITAILS'

loop do
  print "Enter: display clients, display animals, create animal, create client, adopt, or put up for adoption to continue..."
  response = gets.chomp

  if response == 'create animal'
    print 'What is the animal\'s name? '
    name = gets.chomp
    print 'What species is this animal? '
    species = gets.chomp
    print 'What is the animal\'s age? '
    age = gets.chomp
    print 'The gender? '
    gender = gets.chomp
    print 'What toys does it have? '
    toys = gets.chomp
    $shelter[:animals][name] = Animal.new(name, species, age, gender, toys)
    puts $shelter[:animals][name].name + " the " + $shelter[:animals][name].species + " has joined the shelter"

  elsif response == 'create client'
    print 'What is your name? '
    name = gets.chomp
    print 'How many children do you have? '
    children = gets.chomp
    print 'What is your age? '
    age = gets.chomp
    print 'How many pets do you currently have? '
    existing_pets = gets.chomp
    $shelter[:clients][name] = Client.new(name, children, age, existing_pets)
    puts "Welcome " + $shelter[:clients][name].name + "! We've got you in the client database."

  elsif response == 'adopt'
    puts 'What is your name? '
    client = gets.chomp
    puts 'Which pet would you like to adopt? '
    animal = gets.chomp
    if $shelter[:animals].include? animal
      $shelter[:clients][client].add_pet($shelter[:animals][animal])
      $shelter[:animals].delete(animal)
    else
      puts 'Sorry there\'s no animal in our database with that name'
    end

  elsif response == 'put up for adoption'
    puts 'What is your name? '
    client = gets.chomp
    puts 'Which pet would you like to put up for adoption? '
    animal = gets.chomp
    binding.pry
    $shelter[:clients][client].remove_pet(animal)
    puts "OH NO!  Sorry " + $shelter[:animals][animal].name

  elsif response == 'display animals'
    if $shelter[:animals] == {}
      puts 'Sorry we don\'t have any animals at this time'
    else
      puts $shelter[:animals].map{|key| print key[1].name + " is a " + key[1].age + ' year old ' + key[1].species + " who likes to play with " + key[1].toys.to_s + ".  "}
    #why does above statement require [1]- what is this pointing to?
      puts $shelter[:animals]
    end

  elsif response == 'display clients'
    if $shelter[:clients] == {}
      puts 'Sorry we don\'t have any clients at this time'
    else
      puts $shelter[:clients].map{|key| print key[1].name}
      puts $shelter[:clients]
    end
  else
    puts 'Sorry we don\'t recognize your request.  Let\'s try again...'
  end
end
