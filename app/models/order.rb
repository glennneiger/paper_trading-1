class Order < ApplicationRecord
  belongs_to :user

  enum type:    [:market_order, :limit_order]
  enum status:  [:queued, :executed, :complete]

  monetize :entry_price_cents
  monetize :take_profit_cents
  monetize :stop_loss_cents
  monetize :exit_price_cents
end
