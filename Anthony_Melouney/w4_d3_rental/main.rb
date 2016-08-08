require 'pry'
require './apartment.rb'
require './buildtsing.rb'
require './person.rb'

def initialize building, apartment, person

# put a person inside an apartment which then goes into a building

# a list of peeps
joe = Person.new("Joe", 40, "male")
maggie = Person.new("Maggie", 27, "female")
tad = Person.new("Tad", 32, "male")

# their apartment
a1 = Apartment.new(10000, true, 1000, 3, 2)
a1.renters.push(joe, maggie, tad)

# more peeps just to test
bill = Person.new("Bill", 50, "male")
magda = Person.new("Magda", 27, "female")
hman = Person.new("Hman", 28, "male")
bro = Person.new("Bro", 45, "male")

# another apt to test
a2 = Apartment.new(33500, false, 440, 6, 7)
a2.renters.push(bill, magda, hman, bro)

# now make a building and push in the apts
b1 = Building.new()
b1.apartments.push(a1, a2)

binding.pry
