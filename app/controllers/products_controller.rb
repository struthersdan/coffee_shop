#
class ProductsController < ApplicationController
  def index
    @categories = Category.all
    @products = product_search if params[:name]
    @products = find_products unless params[:name]
    @products = @products.page(params[:page]).per(2)
    @order_item = current_order.order_items.new
  end

  def show
    @product = Product.find(params[:id])
  end

  def find_products
    return @products = Product.where(category_id: params[:category_id]) \
    if params[:category_id]
    return @products = new if params[:new]
    return @products = update if params[:updated]
    @products = Product.all
  end

  def product_search
    if params[:category_id] != ''
      @products = Product.where('name ILIKE ? AND category_id = ?', \
                                "%#{params[:name]}%", params[:category_id])
    else
      @products = Product.where('name ILIKE ?', "%#{params[:name]}%")
    end
  end

  def new
    Product.all.order('created_at DESC').limit(5)
  end

  def updated
    Product.all.order('updated_at DESC').limit(5)
  end
end
