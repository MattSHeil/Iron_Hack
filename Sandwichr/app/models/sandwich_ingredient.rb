class SandwichIngredient < ActiveRecord::Base
	belongs_to :sandwich
	belongs_to :ingredient

	# after_add: :add_calories

	# private

	#   def add_calories(ingredient)
	#   	self.total_calories += ingredient.calories
	#   end

end
