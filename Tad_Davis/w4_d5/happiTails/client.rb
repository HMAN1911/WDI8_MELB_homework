class Client 


	attr_accessor :name, :age, :children, :pets

	def initialize name="tyler durden",age=38, children=[], pets=[]
		@name = name
		@age = age
		@children = children
		@pets = pets
		@shelter = {}

	end



end