# require 'observer'

class Employee
	# include Observable
	include Subject

	attr_reader :name, :title, :salary

	def initialize(name, title, salary)
		super()
		@name = name
		@title = title
		@salary = salary
	end

	def salary=(new_salary)
		@salary = new_salary
		# changed
		notify_observers
	end

end



fred = Employee.new('Fred', 'Crane Operator', 80000)
fred.add_observer do |changed_employee|
	puts("Cut a new check for #{changed_employee.name}!")
	puts("His salary is now #{changed_employee.salary}!")
end