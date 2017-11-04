class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :status
      t.string :customer_id
      t.string :integer

      t.timestamps
    end
  end
end
