# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

CSV.foreach("#{Rails.root}/lib/files/nysenasdaq.csv") do |row|
  if row[2] == "NMS"
    la = "nasdaq"
  else
    la = "nyse"
  end

  Stock.create(ticker: row[0], company_name: row[1], listed_at: la)
end
