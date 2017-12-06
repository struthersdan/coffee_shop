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
    elsif params[:new]
      @products = Product.all.order("created_at DESC").limit(5)
    elsif params[:updated]
      @products = Product.all.order("updated_at DESC").limit(5)
    else
      @products = Product.all
    end
    @products = @products.page(params[:page]).per(2)
    @order_item = current_order.order_items.new
  end
  def show
    @product = Product.find(params[:id])
  end
end
