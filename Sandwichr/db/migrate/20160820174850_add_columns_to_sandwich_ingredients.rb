class AddColumnsToSandwichIngredients < ActiveRecord::Migration
  def change
  	add_reference :sandwich_ingredients, :sandwich, foreign_key: true
  	add_reference :sandwich_ingredients, :ingredient, foreign_key: true
  end
end
