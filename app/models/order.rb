class Order < ApplicationRecord
  belongs_to :user

  enum order_type:    [:market_order, :limit_order]
  enum status:        [:queued, :executed, :complete]

  monetize :entry_price_cents
  monetize :take_profit_cents
  monetize :stop_loss_cents
  monetize :exit_price_cents

  before_save do |order|
    puts "before save #{order}"
    stock = Stock.find_by(ticker: ticker)
    if stock.close.to_money <= entry_price
      order.status = :executed
    else
      order.status = :queued
    end
  end
end
