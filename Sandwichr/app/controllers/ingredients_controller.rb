class IngredientsController < ApplicationController

	protect_from_forgery with: :null_session

	def index
		ingredients = Ingredient.all
		render json: ingredients
	end

	def create
		ingredient = Ingredient.create(ingredientsParam)
		render json: ingredient
	end

	def show
		ingredient = Ingredient.find_by(id: params[:id])
		unless ingredient
			render json: {error: "ingredient dont exist"},
				status: 404
			return
		end
		render json: ingredient
	end

	def update
		ingredient = Ingredient.find_by(id: params[:id])
		unless ingredient
			render json: {error: "Ingredient dont exist"},
			status: 404
			return
		end
		ingredient.update(ingredientsParam)
		render json: ingredient
	end

	def destroy
		ingredient = Ingredient.find_by(id: params[:id])
		unless ingredient
			render json: {error: "ingredient dont exist"},
				status: 404
			return
		end
		ingredient.destroy
		render json: ingredient
	end

	private

	def ingredientsParam
		params.require(:ingredients)
			.permit(:name, :calories)
	end

end
