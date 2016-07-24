class Monkey 

attr_accessor :name , :pocket

def initialize name="wayne" 
	@name = name
	@pocket = []
	end 

def check_bananas
	return @pocket
end


def get_bananas bananas
 @pocket.push(bananas)
end

def eat_bananas
@pocket = []
end


end