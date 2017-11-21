class ProductsController < ApplicationController
  def index
    @search = Product.joins(:category).ransack(params[:q])
    @products = @search.result(distinct: true)
    @order_item = current_order.order_items.new
  end
end
