class Monkey
  # attr_accessor :name, :pocket
    # this makes a hidden method for name
      # def name
      #   @name
      # end
    # this makes a hidden method for pocket
      # def pocket
      #   @pocket
      # end
    # these allow your program to 'get' and 'set'(re-set) these attributes

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
