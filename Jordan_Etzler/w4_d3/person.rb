
class Person

  attr_accessor :name, :age, :gender

  def initialize (name, age, gender)

    @name = name
    @age = age.to_i
    @gender = gender

  end

  def to_s
    "#{@name} is #{@age} year old #{@gender}."
  end

end
