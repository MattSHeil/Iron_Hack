class CreateUserSandwiches < ActiveRecord::Migration
  def change
    create_table :user_sandwiches do |t|
      t.references :user, index: true, foreign_key: true
      t.references :sandwich, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
