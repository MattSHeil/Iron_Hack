class Sandwich < ActiveRecord::Base
	has_many :sandwich_ingredients
	has_many :ingredients, through: :sandwich_ingredients,
						after_add: :add_calories

	has_many :user_sandwiches
	has_many :users, through: :user_sandwiches

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

	  def add_calories(ingredient)
	  	self.total_calories += ingredient.calories
	  	self.save
	  end

end
