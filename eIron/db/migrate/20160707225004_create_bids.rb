class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.string :user_id
      t.string :product_id
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
