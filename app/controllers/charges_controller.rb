class ChargesController < ApplicationController
  def new
    @amount = calc_amount
    @description = 'Description of Charge'
  end

  def create
    amount = calc_amount

    @customer = current_customer

    @charge = Stripe::Charge.create(customer:    @customer.id,
                                    amount:      amount,
                                    description: 'Rails Stripe customer',
                                    currency:    'cad')
    current_order.customer = current_customer
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  private
  def calc_amount
    @subtotal = current_order.subtotal * 100
    @GST = @PST = @HST = 0
    @GST = @subtotal * current_customer.province.GST unless current_customer.province.GST.nil?
    @PST = @subtotal * current_customer.province.PST unless current_customer.province.PST.nil?
    @HST = @subtotal * current_customer.province.HST unless current_customer.province.HST.nil?
    @tax = @GST + @PST + @HST
    @amount = (@subtotal + @tax).round
  end
end
