require './monkey'
require './banana'
require 'pry'


b = Banana.new()
b2 = Banana.new()

m = Monkey.new()

m.pocket.push("b")


binding.pry