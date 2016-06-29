class ChargesController < ApplicationController

  def new
    @wish = Wish.find_by :id => session[:wish_id]
    @user = User.find_by :id => @wish.user_id
  end

  def create
    # Amount in cents
    @wish = Wish.find_by :id => session[:wish_id]
    @user = User.find_by :id => @wish.user_id
    amount = @wish.total_revenue * 100
    @amount = amount.to_i

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => @wish.id,
      :currency    => 'aud'
    )


    @wish.update( :payment_date => DateTime.now )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

end
