# should work like this:
# make 1 monkey object, and 2 banana objects
# Monkey1.get_banana < it goes into his pocket
# then monkey will eat it when called

require './monkey.rb'
require './banana.rb'
require 'pry'

# 'bongo' = new.Monkey
# puts 'Bongo'

m = Monkey.new('Bongo')
b1 = Banana.new
b2 = Banana.new

binding.pry
