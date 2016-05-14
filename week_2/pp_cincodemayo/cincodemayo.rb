require_relative('lib/employee')
require_relative('lib/payroll')
require_relative('lib/hourlyemployee')
require_relative('lib/salariedemployee')
require_relative('lib/multipaymentemployee')


josh = HourlyEmployee.new("Josh", "nachoemail@example.com", 35, 50)
nizar = SalariedEmployee.new("Nizar", "starcraftrulez@gmail.com", 1000000)
ted = MultiPaymentEmployee.new("Ted", "fucktedd@gmail.com", 60000, 275, 55)
christian = HourlyEmployee.new("Christian", "pleasefeedme@gmail.com", 12, 50)
matt = SalariedEmployee.new("Matt", "matt@gmail.com", 30000)

employees = [josh, nizar, ted, christian, matt]

josh.calculate_salary
nizar.calculate_salary
ted.calculate_salary
christian.calculate_salary
matt.calculate_salary

payroll = Payroll.new(employees)
payroll.pay_employees

payroll.notify_employee(josh)