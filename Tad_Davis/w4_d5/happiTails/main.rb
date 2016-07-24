require './animal'
require './client'
require './shelter'
require 'pry'


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
## The Prompt for the new client 
##



binding.pry

=begin
puts "whats your name"
client = gets.chomp

client_name.push(client)


=end


=begin

puts "Welcome to the animal shelter"
puts "Would you like to create a client?(y/n)"
create_client = gets.chomp

aray = []

if create_client == "y"
	puts "whats your name"
	client_name = gets.chomp
	puts "whats your age"
	client_age = gets.chomp	
	puts "do you have children (y/n)"
	have_children = gets.chomp
	if have_children == 'y'
		
		puts "what are their names"
		children_names = gets.chomp 


	else
		puts "ok no kids"

end

		puts "list your pets"
		pets = gets.chomp
		puts "ok great thats all the information we need"

else
	puts "no client thats ok"

end


puts " you are  #{client_name}  your age is #{client_age} 
your children are #{children_names} your pets are #{pets}"

=end