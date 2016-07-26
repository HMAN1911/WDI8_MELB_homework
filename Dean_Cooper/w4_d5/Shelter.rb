class Shelter

  def initialize
    @clientList = []
    @animalList = []
  end

  def addClient(client)
    @clientList.push(client)
  end

  def addAnimal(animal)
    @animalList.push(animal)
  end

  def showAnimals()
    return @animalList
  end

  def showClients()
    return @clientList
  end

end
