
class Animal

  attr_accessor :name, :age, :gender, :species, :toy

  def initialize
    puts "Enter animal name:"
    @name = gets.chomp
    puts "Enter animal age:"
    @age = gets.chomp
    puts "Enter animal gender:"
    @gender = gets.chomp
    puts "Enter species"
    @species = gets.chomp
      puts "Enter favourite toys"
    @toys = gets.chomp
  end

end
