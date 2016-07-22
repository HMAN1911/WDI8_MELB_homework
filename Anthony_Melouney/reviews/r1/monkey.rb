class Monkey

  attr_accessor :name :pocket :check :eaten

   def initialize name, pocket
     @name = 'bongo'
     @pocket = []
   end

   def get_banana(banana)
     @pocket = banana.push[]
   end

   def check_banana
     @check = p[]
   end

   def eat_banana
     @eaten = [] - 1
   end
end
