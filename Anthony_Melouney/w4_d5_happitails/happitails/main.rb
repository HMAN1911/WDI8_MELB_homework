require 'pry'
require './shelter'
require './animal'

loop do
  print "Want a puppy? (y/n)"
    if gets.chomp == 'y'
      return
    else
      return
    end
end

binding.pry
