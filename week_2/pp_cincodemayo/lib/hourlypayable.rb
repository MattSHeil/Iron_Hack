module HourlyPayable
  def calc_week_pay
    salary = @hourly_rate * @hours_worked
    salary
  end
end