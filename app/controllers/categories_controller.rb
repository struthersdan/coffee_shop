# categories controller
class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @products = if !:product_id.nil?
                  @category.products.where('name like ?', :product_id)
                else
                  @category.products
                end
    @order_item = current_order.order_items.new
  end
end
