require 'pry'

class Person

  attr_accessor :name, :age, :gender

  def initialize(name, age, gender)

    # @'s' are properties
    @name = name
    @age = age
    @gender = gender

  end

  def to_s
   "name is #{@name}, age is #{@age}, gender is #{@gender}"
  end
end

binding.pry
