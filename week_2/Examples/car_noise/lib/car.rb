require_relative('engine')

class Car
  def initialize(noise, engine)
    @noise = noise
    @engine = engine
  end

  def move
    puts @noise
    puts @engine.make_noise
  end 
end
