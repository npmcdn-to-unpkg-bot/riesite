class SubscribersController < ApplicationController

  before_filter :authenticate_user!
  def new
  end

  def updated
    token = params[:stripeToken]
    customer = Stripe::Customer.create(
      card: token,
      plan: 1020,
      email: current_user.email
    )
    current_user.subscribed = true
    current_user.stripeid = customer.id
    current_user.save

    redirect_to products_path
  end
end
