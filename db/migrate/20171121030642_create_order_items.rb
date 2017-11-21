class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.string :order_status
      t.string :references
      t.references :product, foreign_key: true
      t.references :order, foreign_key: true
      t.decimal :price
      t.integer :quantity
      t.decimal :total_price

      t.timestamps
    end
  end
end
