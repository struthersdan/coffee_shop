class AddOrdersToCustomer < ActiveRecord::Migration[5.1]
  def change
    add_reference :customers, :order, foreign_key: true
  end
end
