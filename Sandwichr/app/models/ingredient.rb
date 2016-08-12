class Ingredient < ActiveRecord::Base
	has_many :sandwich_ingredient
	has_many :sandwiches, through: :sandwich_ingredient
end
