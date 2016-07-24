require './animal'

class Client

  def initialize(name='', num_children='', age='', pets=[])
    @name = name
    @num_children = num_children
    @age = age
    @pets = pets

    print 'What is the client\'s name? '
    @name = gets.chomp
    print "How many children does #{@name} have? "
    @num_children = gets.chomp
    print "How old is #{@name}? "
    @age = gets.chomp

  end

end
