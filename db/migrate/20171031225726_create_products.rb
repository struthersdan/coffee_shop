class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :stock_quantity
      t.integer :user_id
      t.integer :category_id
      t.string  :image

      t.timestamps
    end
  end
end
