require './building.rb'
require './apartment.rb'
require './person.rb'

person = Person.new('Dean', '79', 'Robot')
puts person.to_s

apartment = Apartment.new(@person, '10,000', true, '20', '1', '1')
puts apartment.add_renter(person)

building = Building.new(@person, @apartment, '1 Freshwater Place', 'Crappy', true, false, '2')
puts building.add_apartment(apartment)
