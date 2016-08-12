class AddCaloriesToIngredients < ActiveRecord::Migration
  def change
  	change_column :ingredients, :calories, :integer, :default => 0
  end
end
