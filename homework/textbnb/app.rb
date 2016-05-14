require_relative('lib/home')

nizar_home = Home.new("Nizar's place", "San Juan", 2, 42),
fernando_home = Home.new("Fernando's place", "Seville", 5, 47),
josh_home = Home.new("Josh's place", "Pittsburgh", 3, 41),
gonzaloo_home = Home.new("Gonzalo's place", "Málaga", 2, 45),
ariel_home = Home.new("Ariel's place", "San Juan", 4, 49),
matt_home = Home.new("Matt's place", "Tokyo", 2, 32),
alice_home = Home.new("Alice's place", "Chicago", 4, 41),
lara_home = Home.new("Lara's place", "Chicago", 5, 50),
patrick_home = Home.new("Patrick's place", "Los Angeles", 3, 47),
faraz_home = Home.new("Faraz's place", "New York", 2, 48)

list_of_homes = [
				nizar_home,
				fernando_home,
				josh_home,
				gonzaloo_home,
				ariel_home,
				matt_home,
				alice_home,
				lara_home,
				patrick_home,
				faraz_home
			]

home_sorter = HomeSorter.new(list_of_homes)
home_sorter.home_printer