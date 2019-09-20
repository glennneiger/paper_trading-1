class OrdersController < ApplicationController
  before_action :require_login

  def new
    @order = Order.new(order_params)
    @order.user = current_user
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    if @order.save
      redirect_to orders_path, notice: "Order created successfuly"
    else
      flash.now.alert = "Unknown error"
      render :new
    end
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
                                  :order_type,
                                  :entry_price,
                                  :take_profit,
                                  :stop_loss,
                                  :shares
                                )
  end
end
