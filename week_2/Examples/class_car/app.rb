require_relative('lib/engine')
require_relative('lib/car')

v8 = Engine.new("DURRRR", 400)
v6 = Engine.new("durrrr", 300)
electric = Engine.new("Bzzzzz", 350)

tesla = Car.new("Burrr", electric)
tesla.start

other_tesla = Car.new("Caaaaa", v8)
other_tesla.start

