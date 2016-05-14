require_relative('lib/spaceship')
require_relative('lib/spaceship_battle')

# Spaceship.number_of_spaceships

millenium_falcom = Spaceship.new("Millenium Falcom", 100, "Proton Blastser", 900, 10)
death_star = Spaceship.new("Death Star", 100, "Deah Ray", 10, 50)

# Spaceship.number_of_spaceships

# millenium_falcom.fly

# millenium_falcom.attack(death_star)

first_battle = SpaceshipBattle.new(millenium_falcom, death_star)

first_battle.battle
