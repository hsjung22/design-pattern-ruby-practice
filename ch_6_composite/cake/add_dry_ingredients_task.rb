class AddDryIngredientsTask < Task

	def initialize
		super('Add dry ingredients')
	end

	def get_time_required
		# 1 minute to add flour and sugar
		1.0
	end

end