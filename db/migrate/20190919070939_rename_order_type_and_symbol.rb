class RenameOrderTypeAndSymbol < ActiveRecord::Migration[5.1]
  def change
    rename_column :orders, :symbol, :ticker
  end
end
