require_relative ('employee')

class MultiPaymentEmployee < Employee
	attr_reader :salary, :calculate_salary

	def initialize (name, email, annual_salary, hourly_rate, hours_worked)
		super(name, email)
		@annual_salary = annual_salary
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end

	def calculate_salary
		salary = (@annual_salary/52) + (@hourly_rate * @hours_worked)
		salary
	end
end