class SandwichesController < ApplicationController

	protect_from_forgery with: :null_session

	def index
		sandwiches = Sandwich.all
		render json: sandwiches
	end

	def add_ingredient
		sandwich = Sandwich.find_by(id: params[:id])
		ingredient = Ingredient.find_by(id: params[:ingredient_id])
		sandwich.ingredients.push(ingredient)
		render json: sandwich.to_json(:include => :ingredients)
	end

	def create
		sandwich = Sandwich.create(sandwichParams)
		render json: sandwich 
	end

	def show
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json: {error: "sandwich dont exist"},
				status: 404
			return
		end
		render json: sandwich.to_json(:include => :ingredients)
	end

	def update 
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json: {error: "sandwich dont exist"},
				status: 404
			return
		end
		sandwich.update(sandwichParams)
		render json: sandwich
	end

	def destroy
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json: {error: "sandwich dont exist"},
				status: 404
			return
		end
		sandwich.destroy
		render json: sandwich
	end

	private

	def sandwichParams
		params.require(:sandwich)
			.permit(:name, :bread_type)
	end
end