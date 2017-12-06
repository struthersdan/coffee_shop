# order status model
class OrderStatus < ApplicationRecord
  has_many :orders
end
