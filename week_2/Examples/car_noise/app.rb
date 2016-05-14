require_relative('lib/car')
require_relative('lib/engine')

regular = Engine.new

ferrari = Car.new("VROOOOOOM", regular)
prius = Car.new("ZZZZZZZZZ", regular)

ferrari.move




