class MakeCakeTask < CompositeTask

	def initialize
		super('Make cake')	
		add_sub_task( MakeBatterTask.new )
		add_sub_task( FillPanTask.new )
		add_sub_task( BakeTask.new )
	end

end