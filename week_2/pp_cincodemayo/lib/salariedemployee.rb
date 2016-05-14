require_relative ('employee')
require_relative('monthlypayable')

class SalariedEmployee < Employee
	include MonthlyPayable
	attr_reader :salary, :calculate_salary
	
	def initialize(name, email, annual_salary)
		super(name, email) 
		@annual_salary = annual_salary
	end

	def calculate_salary
      calc_monthly_pay
	end
end
