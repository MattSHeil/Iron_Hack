class DeleteColumnFromSandwichIngredients < ActiveRecord::Migration
  def change
  	remove_column :sandwich_ingredients, :sandwich_id, :integer
  	remove_column :sandwich_ingredients, :ingredient_id, :integer
  end
end
