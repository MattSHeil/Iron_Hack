class SandwichIngredientController < ApplicationController

	protect_from_forgery with: :null_session
	
	def add
		sandwich = Sandwich.find_by(id: params[:id])
		ingredient = Ingredient.find_by(id: params[:ingredient_id])
		sandwich.ingredients.push(ingredient)

		# LESS CODE USING JUST THE LAST LINE OF RENDER
			# them_ingredients = sandwich.ingredients
			# sandwich_and_ingredients = {
			# 	"Sandwich" => sandwich,
			# 	"Ingredients" => them_ingredients
			# }

		# MOVED THIS TO THE MODEL
			# stuffToUpdate = sandwich.total_calories += ingredient.calories
			# sandwich.update(total_calories: stuffToUpdate)

		# NO LONGER NEEDED
			# render json: sandwich_and_ingredients

		render json: sandwich.to_json(:include => :ingredients)
	end

	private

	# def someParams
	# 	params.require(:sandwich).permit(:ingredient_id), calories
	# end
end
