class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_order

  def current_order
    if !Order.find_by_id(session[:order_id]).nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end
end
