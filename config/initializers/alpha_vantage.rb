# Alpha Vantage setup goes here

ALPHA_VANTAGE = Alphavantage::Client.new key: Rails.application.secrets[:alpha_vantage_api_key]
