class CreateLabeledPosts < ActiveRecord::Migration
  def change
    create_table :labeled_posts do |t|
      t.integer :post_id
      t.integer :label_id

      t.timestamps null: false
    end
  end
end
