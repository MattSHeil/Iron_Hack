class CreateSomeMoreTests < ActiveRecord::Migration[5.0]
  def change
    create_table :some_more_tests do |t|
      t.string :somestring
      t.integer :someinteger

      t.timestamps
    end
  end
end
