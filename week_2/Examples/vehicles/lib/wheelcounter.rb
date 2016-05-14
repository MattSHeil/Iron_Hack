require_relative('hoverboard')
require_relative('motorcycle')
require_relative('sedan')
require_relative('truck')
require_relative('unicycle')

class WheelCounter
  def initialize(array_of_x)
    @array_of_x = array_of_x
  end	

  def count_wheel
    @array_of_x.reduce(0) do | sum, x |
      sum + x.wheels
    end
  end
end