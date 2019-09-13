class Stock < ApplicationRecord

  enum listed_at: [:nyse, :nasdaq]
end
