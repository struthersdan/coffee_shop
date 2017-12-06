class PaymentsController < ApplicationController
  before_action :amount_to_be_charged
  before_action :set_description
  before_action :set_plan
  before_action :authenticate_customer!

  def new
  end

  def create
    customer = current_customer
    charge = StripeTool.create_charge(customer_id: customer.id,
                                      amount: @amount,
                                      description: @description)

    redirect_to payment_thanks_path
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_payment_path
  end

  def thanks
  end

  private

    def set_description
      @description = "Basic Membership"
    end

    def amount_to_be_charged
      @subtotal = current_order.subtotal * 100
      @GST = @PST = @HST = 0
      @GST = @subtotal * current_customer.province.GST unless current_customer.province.GST.nil?
      @PST = @subtotal * current_customer.province.PST unless current_customer.province.PST.nil?
      @HST = @subtotal * current_customer.province.HST unless current_customer.province.HST.nil?
      @tax = @GST + @PST + @HST
      @amount = (@subtotal + @tax)
      @description = 'Description of Charge'
    end

    def set_plan
      @plan = 9999
    end
end
