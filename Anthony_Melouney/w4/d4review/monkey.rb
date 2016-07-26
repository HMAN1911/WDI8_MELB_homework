class Monkey

  # attr_accessor :name, :pocket

 def initialize(name = "bongo")
  @name = name
  @pocket = []
 end

 def get_banana(banana)
  @pocket << banana
 end

 def check_bananas
  return @pocket
 end

 def eat_banana
  @eaten = @pocket.pop
 end
end
