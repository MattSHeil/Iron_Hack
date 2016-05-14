class Spaceship
  
  attr_accessor :name, :shields, :damage

  @@space_ship_couner = 0

  def initialize(name, shields, blasters, speed, damage)
    # intance variabbles, relate to a single spaceship
    @name = name
    @shields = shields
  	@blasters = blasters
  	@speed = speed
  	@damage = damage
  	# class variable, relate to everything
    @@space_ship_couner += 1
  end
  
  def fly
  	puts "Flying at #{@speed} parsecs"
  end
  
  def self.number_of_spaceships
    puts "So far we have #{@@space_ship_couner} spaceshis"
  end
  
  def dead?
    if @shields <= 0 
      true
    else  	
      false	
    end
  end

  def attack(another_spaceship)
  	another_spaceship.shields -= @damage
  	puts "#{name} hits for #{damage} damege"
  	puts "#{another_spaceship.name} has #{another_spaceship.shields} shield left"    
  end
end
