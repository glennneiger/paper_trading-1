class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.string :ticker,           null: false
      t.string :company_name,     null: false
      t.string :listed_at,        null: false
      t.boolean :active,          null: false, default: false

      t.timestamps
    end
  end
end
