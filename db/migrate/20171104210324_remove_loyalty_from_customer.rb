class RemoveLoyaltyFromCustomer < ActiveRecord::Migration[5.1]
  def change
    remove_column :customers, :loyalty, :integer
  end
end
