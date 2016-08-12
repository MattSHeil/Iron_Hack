class SandwitchIngredientController < ApplicationController

	def add
		sandwich = Sandwich.find_by(id: params[:id])
		ingredient = Ingredient.find_by(id: params[:id])
		sandwich.ingredients.push(ingredient)
		them_ingredients = sandwich.ingredients
		sandwich_and_ingredients = {
			"Sandwich" => sandwich
			"Ingredients" => them_ingredients
		}

		render json: sandwich_and_ingredients
	end

end
