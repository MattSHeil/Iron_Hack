class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

def array_printer(array)
  array.each do | home |
    puts "#{home.name} in #{home.city}. Price: #{home.price} a night for #{home.capacity} people."
  end
end

puts "what would you like to sort by next?"

answer = gets.chomp


# if 
#   user_num == 1
#   puts array_printer(sorted_price_lh)
# elsif 
#   user_num == 2 
#   puts array_printer(sorted_price_hl)
#   user_num == 3
#   puts array_printer(sorted_capacity_lh)
# end

homes = [
nizar = Home.new("Nizar's place", "San Juan", 2, 42),
fernando = Home.new("Fernando's place", "Seville", 5, 47),
josh = Home.new("Josh's place", "Pittsburgh", 3, 41),
gonzaloo = Home.new("Gonzalo's place", "Málaga", 2, 45),
ariel = Home.new("Ariel's place", "San Juan", 4, 49),
matt = Home.new("Matt's place", "Tokyo", 2, 32),
alice = Home.new("Alice's place", "Chicago", 4, 41),
lara = Home.new("Lara's place", "Chicago", 5, 50),
patrick = Home.new("Patrick's place", "Los Angeles", 3, 47),
faraz = Home.new("Faraz's place", "New York", 2, 48)
]


sorted_price_lh = homes.sort_by { | home | home.price }
sorted_price_hl = homes.sort_by { | home | home.price }.reverse
sorted_capacity_lh = homes.sort_by { | home | home.capacity }


# array_printer(sorted_price_lh)


	

# sorted_price_hl = homes.sort_by { | home | home.price }.reverse





# puts homes[0].name
# puts homes[1].name
# puts homes[2].name
# puts homes[3].name
# puts homes[4].name

# for number in 0..100
#   puts number
# end

# for pos in 0..5
#   puts homes[pos].name
# end

# homes.each do | hm |
#   puts "#{hm.name} in #{hm.city}\nPrice: #{hm.price} a night "
# end

# # Create an empty array
# cities = []

# # Push each home's city into the array
# homes.each do |hm|
#   cities.push(hm.city)
# end

# puts cities

# cities = homes.map do |hm|
#   hm.city
# end

# puts cities

# prices = homes.map do | hm |
#   hm.price
# end

# puts prices.reduce(0.0) { | sum, number | sum + number }/prices.size

# total_price = prices.reduce(0.0) do | sum, number |
#   sum + number
# end  

# puts "The average price is:"
# puts total_price/prices.length

# total_capacities = homes.reduce(0.0) do |sum, hm|
#   sum + hm.capacity
# end

# puts "The average capacity is:"
# puts total_capacities / homes.length

# homes.each_with_index do |hm, index|
#   puts "Home Number #{index + 1}: #{hm.name}"
# end

# san_juan_homes = homes.select do |hm|
#   # Keep hm only if its city is "San Juan"
#   hm.city == "San Juan"
# end

