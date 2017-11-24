class ProductsController < ApplicationController
  def index
    @categories = Category.all
    if params[:name]
      if params[:category_id] != ''
        @products = Product.where('name ILIKE ? AND category_id = ?', \
                                  "%#{params[:name]}%", params[:category_id])
      else
        @products = Product.where('name ILIKE ?', "%#{params[:name]}%")
      end
    elsif params[:category_id]
      @products = Product.where(category_id: params[:category_id])
    else
      @products = Product.all
    end
    @order_item = current_order.order_items.new
  end
end
