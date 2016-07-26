require './animal'
require './client'
require './shelter'
require 'pry'


# make a shelter
happitails = Shelter.new

#people
harrison = Client.new("harrison",12,"","")
tyler = Client.new("tyler",34,"jane jimmy","frog dog")
sally = Client.new("sally",23,"joey jessy","")
#animals
jesus = Animal.new("jesus",4,"m","frog","teddy1 teddy2")
edog = Animal.new("edog",10,"f","dog","toy1 toy2")
growler = Animal.new("growler",7,"m","dog","toy1 toy2")
fuzzy= Animal.new("fuzzy",6,"m","cat","toy1 toy2")
stinky = Animal.new("stinky",4,"f","cat","mousetoy fluffBall")

##
# put animal in client 




##
## The Prompt for the new client 
##


puts 'welcome to happitails'
puts 'register new animal? y/n'
choice = gets.chomp 

while choice == 'y'

	puts 'register new animal'

	puts 'animal name:'
	animal_name = gets.chomp

	puts 'animal age:'
	age = gets.chomp

	puts 'animal gender:'
	gender = gets.chomp

	puts 'animal species:'
	species = gets.chomp


	puts 'animal toys:'
	toys = gets.chomp


	animal = Animal.new(animal_name, age, gender, species, toys)


	happitails.add_animals(animal)

	puts 'register new animal? y/n'
	choice = gets.chomp 
end

######################################
## => CLIENTS 
##
#####################################

puts 'welcome to happitails'
puts 'register new client? y/n'
clientchoice = gets.chomp 

while clientchoice == 'y'

	puts 'register new client'

	puts 'client name:'
	client_name = gets.chomp

	puts 'client age:'
	client_age = gets.chomp

	puts 'client children:'
	children = gets.chomp

	puts 'client pets:'
	client_pet = gets.chomp


	client = Client.new(client_name, client_age, children, client_pet)


	happitails.add_clients(client)

	puts 'register new client? y/n'
	clientchoice = gets.chomp 
end



binding.pry


