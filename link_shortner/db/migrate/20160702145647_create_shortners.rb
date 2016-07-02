class CreateShortners < ActiveRecord::Migration
  def change
    create_table :shortners do |t|
      t.string :original
      t.string :shorturl

      t.timestamps null: false
    end
  end
end
