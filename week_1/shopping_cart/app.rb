require_relative('lib/shopping_cart')
require_relative('lib/item')
require_relative('lib/houseware')
require_relative('lib/fruit')
# menu items
banana = Fruit.new("Banana", 10)
oj = Item.new("OJ", 10)
rice = Item.new("Rice", 1)
vacuum_cleaner = Houseware.new("Vacuum", 150)
anchovies = Item.new("Anchovies", 2)

iron_cart = ShoppingCart.new
iron_cart.add_to_cart(banana)
iron_cart.add_to_cart(banana)
iron_cart.add_to_cart(banana)
iron_cart.add_to_cart(vacuum_cleaner)
iron_cart.add_to_cart(oj)
iron_cart.add_to_cart(anchovies)
iron_cart.add_to_cart(rice)

puts "Your total today is #{iron_cart.checkout} "

