require './animal.rb'
require './client.rb'
require 'pry'

shelter = {}
relationships = {}

print "Would you like to create animal or client? (animal/client/no) "
option_select = gets.chomp

if option_select === "animal"

  #Name
  print "What is the name of your animal?  "
  @animal_name = gets.chomp
  #Age
  print "What is the age of your animal?  "
  @animal_age = gets.chomp
  #Gender
  print "What is the gender of you animal?  "
  @animal_gender = gets.chomp
  #Species
  print "What species is your animal?  "
  @animal_species = gets.chomp

  School.new(@animal_name, @animal_age, @animal_gender, @animal_species)


elsif option_select === "client"

  #Name
  print "What is the name of the client?  "
  @client_name = gets.chomp
  #Children
  print "How many children does your client have?  "
  @client_children = gets.chomp
  #Age
  print "How old is your client?  "
  @client_age = gets.chomp

  Client.new(@client_name, @client_children, @client_age)

else


end

binding.pry
