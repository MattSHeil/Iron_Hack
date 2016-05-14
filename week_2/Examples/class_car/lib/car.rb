class Car
  def initialize(noise, engine)
    @noise = noise
    @engine = engine
  end

  def start
  	puts "the car goes #{@noise}"
  	puts "the engine goes #{@engine.make_noise}"
  end
end