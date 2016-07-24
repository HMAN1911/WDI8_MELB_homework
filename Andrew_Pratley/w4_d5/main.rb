require './client'
require './animal'
require 'pry'

$shelter = {
  animals: [],
  clients: []
}

puts "#{"\n"}"
puts "Please enter your option: 1. Display all animals 2. Display all clients 3. Create an animal 4. Create a client 5. Facilitate a client adopting an animal 6. Facilitate a client putting an animal up for adoption 7. Quit #{"\n"}"
puts "#{"\n"}"

input = gets.chomp.to_i

while input != 7 do

  if input == 1
    print $shelter[:animals]
    puts "#{"\n\n"}"

  elsif input == 2
    print $shelter[:clients]
    puts "#{"\n\n"}"

  elsif input == 3
    animal1 = Animal.new
    # Here I changed the object that the class created into a hash.
    hash = {}
    animal1.instance_variables.each {|var| hash[var.to_s.delete("@")] = animal1.instance_variable_get(var) }
    # Here I push the hash that contains the animal into the shelter
    $shelter[:animals].push(hash)
    puts "#{"\n"}Your animal has been added to the shelter.#{"\n\n"}"

  elsif input == 4
    client1 = Client.new
    hash = {}
    client1.instance_variables.each {|var| hash[var.to_s.delete("@")] = client1.instance_variable_get(var) }
    $shelter[:clients].push(hash)
    puts "#{"\n"}Your client has been added to the shelter.#{"\n\n"}"

  elsif input == 5
    puts "What is the name of the client?"
    name_client = gets.chomp
    client = $shelter[:clients].select {|name| name["name"] == name_client }

    puts "What is the name of the animal #{name_client} wants to adopt? "
    name_animal = gets.chomp

    animal = $shelter[:animals].select {|name| name["name"] == name_animal }

    $shelter[:clients].select {|name| name["name"] == name_client }[0]["pets"].push(animal[0])

    # Delete animal from shelter because it has been assigned to a client.
    $shelter[:animals].delete_if {|name| name["name"] == name_animal }

  elsif input == 6
    puts "What is the name of the client?"
    name_client = gets.chomp
    client = $shelter[:clients].select {|name| name["name"] == name_client }
    puts "What is the name of the pet that #{name_client} wants to put up for adoption? "
    name_animal = gets.chomp

    $shelter[:animals].push($shelter[:clients].select {|name| name["name"] == name_client }[0]["pets"].select {|name| name["name"] == name_animal }[0])

    $shelter[:clients].select {|name| name["name"] == name_client }[0]["pets"].delete_if {|name| name["name"] == name_animal }
  end

  puts "Please choose another option: 1. Display all animals 2. Display all clients 3. Create an animal 4. Create a client 5. Facilitate a client adopting an animal 6. Facilitate a client putting an animal up for adoption 7. Quit #{"\n"}"
  puts "#{"\n"}"

  input = gets.chomp.to_i

end
puts "#{"\n"}"
puts "Bye."
puts "#{"\n"}"
