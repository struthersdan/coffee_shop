class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    if(!:product_id.nil?)
      @products = @category.products.where("name like ?", :product_id)
    else
      @products = @category.products
    end
    @order_item = current_order.order_items.new
  end
end
