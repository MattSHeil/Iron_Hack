class Payroll
	def initialize(employees)
		@employees = employees
	end

	def pay_employees
		@employees.each do | dolla |
			puts "#{dolla.name} has made $#{dolla.calculate_salary} this week"
			puts "After taxes, they made $#{((dolla.calculate_salary) * 0.82).round}"
		end
		merp = @employees.reduce(0) do | sum, x|
			sum + x.calculate_salary
		end 
			puts "We've spent a total of $#{merp} on employees this week. Time to get firing."
		end

		def notify_employee(employee)
			puts "Sup #{employee.name}, we paid ya broke ass."
		end
	end
