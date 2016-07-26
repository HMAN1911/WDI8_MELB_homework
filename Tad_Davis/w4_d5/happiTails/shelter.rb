class Shelter

	def initialize
		@client = []
		@animal = []
	end

	def add_clients(client_name)
		@client.push(client_name)
	end
	
	def add_animals(animal)
		@animal.push(animal)
	end

	def list_clients
		@client
	end

	def list_animals
		@animal
	end

	def to_s
		"this shelter has #{@client.size} clients and has #{@animal.size} animals."
	end

	def add_animal_to_client
			@client[pets].push(animal)
	end


end