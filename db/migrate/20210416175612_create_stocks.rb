class CreateStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :stocks do |t|
      t.string :symbol
      t.integer :user_id

      t.timestamps
    end
    add_index :stocks, :user_id
  end
end
