require './building'
require './apartment'
require './person'
require 'pry'

building = Building.new
apartment = Apartment.new
person = Person.new

building.apartments.push(apartment)
apartment.renters.push(person)
binding.pry
