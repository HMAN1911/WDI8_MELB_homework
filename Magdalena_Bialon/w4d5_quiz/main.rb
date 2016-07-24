require 'pry'
require './app.rb'


school = School.new("Haleakala Hippy School")

puts 'My SCHOOL:'
puts school.st



school.add("James", 2)
school.add("Alice", 2)
school.add("Ben", 1)
school.add("Magda", 3)
# print school.add("James", 2)
# print school.add("Alice", 2)


print school.db



print school.grade(1)
print school.grade(2)
print school.grade(3)
# puts school.grade(2)

print school.sort
