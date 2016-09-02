class ChargesController < ApplicationController

  def new
    @order = Order.find_by id: session[:order_id]
    @user = User.find_by id: @order.user_id
  end

  def create
    # Amount in cents
    @order = Order.find_by id: session[:order_id]
    @user = User.find_by id: @order.user_id
    amount = @order.total_revenue * 100
    @amount = amount.to_i

    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      source: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,
      amount:       @amount,
      description:  @order.id,
      currency:     'brl'
    )


    @order.update( payment_date: DateTime.now )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

end
