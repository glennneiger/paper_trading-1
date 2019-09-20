class Stock < ApplicationRecord
  enum listed_at: [:nyse, :nasdaq, :idk]

  attr_accessor :open, :close, :change, :change_percent

  after_find do |stock|
    stock_quote = ALPHA_VANTAGE.search(keywords: stock.ticker).stocks[0].stock.quote
    stock.open = stock_quote.open.to_f
    stock.close = stock_quote.price.to_f
    stock.change = stock_quote.change.to_f
    stock.change_percent = stock_quote.change_percent
  end

  before_create do |stock|
    stock_data = ALPHA_VANTAGE.search(keywords: stock.ticker).stocks[0]
    stock.company_name = stock_data.name
    stock.listed_at = :idk
  end
end
