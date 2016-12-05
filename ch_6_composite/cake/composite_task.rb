class CompositeTask < Task

	def initialize(name)
		super(name)
		@sub_tasks = []
	end

	def add_sub_task(task)
		@sub_tasks << task
		task.parent = self
	end

	def remove_sub_task(task)
		@sub_tasks.delete(task)
		task.parent = nil
	end

	def get_time_required
		@sub_tasks.inject(0.0) {|time,task| time += task.get_time_required}
	end

	def total_number_basic_tasks
		@sub_tasks.inject(0) {|total, task| total += task.total_number_basic_tasks }
	end

end