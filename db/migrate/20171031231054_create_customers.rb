class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :city
      t.integer:province_id
      t.string :postal_code
      t.string :username
      t.string :password
      t.integer :loyalty

      t.timestamps
    end
  end
end
