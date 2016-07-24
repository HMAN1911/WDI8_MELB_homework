class Shelter

	def initialize
		@client = []
		@animal = []
	end

	def add_clients(client_name)
		@client.push(client_name)
	end
	
	def add_animals(animal_name)
		@animal.push(animal_name)
	end
end