class SpaceshipBattle
  def initialize(firsts_spaceship, second_spaceship)
    @att_spaceship = firsts_spaceship
    @deffence_spaceship = second_spaceship
  end

  def battle  
    until @att_spaceship.dead? || @deffence_spaceship.dead?
      @att_spaceship.attack(@deffence_spaceship)

      new_att = @deffence_spaceship.clone 
      new_def = @att_spaceship.clone

      @att_spaceship = new_att
      @deffence_spaceship = new_def  	
    end
    puts "The battle has ended"
  end
end