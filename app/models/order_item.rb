# order model
class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order

  validates :quantity, presence: true, numericality: \
   { only_integer: true, greater_than: 0 }
  validates :product_id, uniqueness: true
  validate :product_present
  validate :order_present

  before_save :finalize

  def price
    if persisted?
      self[:price]
    else
      product.price
    end
  end

  def total_price
    price * quantity
  end

  private

  def product_present
    errors.add(:product, 'is not valid or is not active.') if product.nil?
  end

  def order_present
    errors.add(:order, 'is not a valid order.') if order.nil?
  end

  def finalize
    self[:price] = price
    self[:total_price] = quantity * self[:price]
  end
end
