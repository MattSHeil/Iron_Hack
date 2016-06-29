class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :title
      t.string :city
      t.string :owner
      t.string :description
      t.integer :price
      t.string :picture

      t.timestamps null: false
    end
  end
end