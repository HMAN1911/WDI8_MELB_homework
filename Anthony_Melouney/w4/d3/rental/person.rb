require 'pry'

class Person

  attr_accessor :name, :age, :gender

  def initiailze name, age, gender
    @name = name
    @age = age
    @gender = gender
  end

  def name
    @name = name
  end


  def to_s
    "Name: #{@name} Age: #{@age} Gender: #{@gender} Apartment #{@apartment}"
  end
end

binding.pry
