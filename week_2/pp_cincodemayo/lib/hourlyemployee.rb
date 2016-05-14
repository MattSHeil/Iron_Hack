require_relative('employee')
require_relative('hourlypayable')

class HourlyEmployee < Employee
	include HourlyPayable
	attr_reader :salary, :calculate_salary, :hourly_rate, :hours_worked

	def initialize(name, email, hourly_rate, hours_worked)
		super(name, email)
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end

	def calculate_salary
		#returns the hours worked * hourly_rate
		calc_week_pay
	end
end
