class SandwichIngredientController < ApplicationController

	protect_from_forgery with: :null_session
	
	def add
		sandwich = Sandwich.find_by(id: params[:id])
		ingredient = Ingredient.find_by(id: params[:ingredient_id])
		sandwich.ingredients.push(ingredient)
		them_ingredients = sandwich.ingredients

		sandwich_and_ingredients = {
			"Sandwich" => sandwich,
			"Ingredients" => them_ingredients
		}

		stuffToUpdate = sandwich.total_calories += ingredient.calories

		sandwich.update(total_calories: stuffToUpdate)

		render json: sandwich_and_ingredients
	end

	private

	# def someParams
	# 	params.require(:sandwich).permit(:ingredient_id), calories
	# end
end
