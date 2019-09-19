class StocksController < ApplicationController
  before_action :require_login

  def show
    @stock = Stock.find_or_create_by(ticker: params[:id])
  end
end
