class OrdersController < ApplicationController
  def show
    @customers = Customer.all
  end
end
