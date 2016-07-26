require './main'

class Animal

  def initialize(name, age, gender, species)
    @animal_name = name
    @animal_age = age
    @animal_gender = gender
    @animal_species = species
    @toys = []
  end

  def name
    return @animal_name
  end

end


=begin

Animal:

An animal should have a name.
An animal should have an age.
An animal should have a gender.
An animal should have a species.
An animal can have multiple toys.

=end
