class Client

  attr_accessor :name, :noOfChildren, :age

  def initialize(name, noOfChildren,age)
    @name = name
    @noOfChildren = noOfChildren
    @age = age
    @petList = {}
  end


  def adoptAnimal(animal)
      @petList.push(animal)
  end


  def unAdoptAnimal(animal)
      @petList.delete_if {|a| a.key == animal.name }
  end
end
