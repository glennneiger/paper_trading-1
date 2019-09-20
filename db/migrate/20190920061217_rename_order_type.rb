class RenameOrderType < ActiveRecord::Migration[5.1]
  def change
    rename_column :orders, :type, :order_type
  end
end
