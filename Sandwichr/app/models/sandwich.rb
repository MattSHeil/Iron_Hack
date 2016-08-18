class Sandwich < ActiveRecord::Base
	has_many :sandwich_ingredient
	has_many :ingredients, through: :sandwich_ingredient
			 # after_add :add_calories

			# ACTIVE RECORD CALLBACKS:
			 # before_save :some_method
			 # after_save :some_method
			 # after_update :some_method

	# def total_calories 
	# 	total_cal = 0 
	# 	ingredients.all.each do | single_ingredient |
	# 		total_cal += single_ingredient.calories
	# 	end
	# 	return total_cal
	# end

	private

	def add_calories
		# self.
		# self. 
	end
end
