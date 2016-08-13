class Sandwich < ActiveRecord::Base
	has_many :sandwich_ingredient
	has_many :ingredients, through: :sandwich_ingredient

	# def total_calories 
	# 	total_cal = 0 
	# 	ingredients.all.each do | single_ingredient |
	# 		total_cal += single_ingredient.calories
	# 	end
	# 	return total_cal
	# end
end
