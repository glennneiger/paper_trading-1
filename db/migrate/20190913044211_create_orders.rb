class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :symbol,           null: false
      t.string :type,             null: false
      t.monetize :entry_price,    null: false
      t.monetize :take_profit
      t.monetize :stop_loss
      t.monetize :exit_price
      t.integer :shares,          null: false
      t.string :status,           null: false

      t.timestamps
    end
  end
end
