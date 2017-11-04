class RemovePasswordFromCustomers < ActiveRecord::Migration[5.1]
  def change
    remove_column :customers, :password, :string
  end
end
