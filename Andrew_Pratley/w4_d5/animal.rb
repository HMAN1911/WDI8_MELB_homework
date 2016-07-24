require 'pry'


class Animal

  def initialize(name='', age='', gender='', species='', toys=[])
    @name = name
    @age = age
    @gender = gender
    @species = species
    @toys = toys

    print 'What is your animal\'s name? '
    @name = gets.chomp
    print "What is #{@name} age? "
    @age = gets.chomp
    print "What is #{@name} gender? "
    @gender = gets.chomp
    print "What is #{@name} species? "
    @gender = gets.chomp
    print "Does #{@name} have any toys? y/n "
    response = gets.chomp
    while response == 'y' do
      print "What toy does #{@name} have? "
      toy = gets.chomp
      @toys.push(toy)
      print "Does #{@name} have any other toys? y/n "
      response = gets.chomp
    end

  end

end
