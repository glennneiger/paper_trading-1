class OrdersController < ApplicationController
  before_action :require_login

  def new
    @order = Order.new
    @order.user = current_user
  end

  def create
    @order = Order.create(order_params)
  end

  def show
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
  end

  private
  def order_params
    params.require(:order).permit(:ticker,
                                  :type,
                                  :entry_price,
                                  :take_profit,
                                  :stop_loss
                                )
  end
end
