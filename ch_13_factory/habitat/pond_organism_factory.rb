# abstract factory

class PondOrganismFactory

	def new_animal(name)
		Frog.new(name)
	end

	def new_plant(name)
		Algae.new(name)
	end

end