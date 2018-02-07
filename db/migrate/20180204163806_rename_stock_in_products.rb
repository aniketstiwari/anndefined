class RenameStockInProducts < ActiveRecord::Migration[5.0]
  def change
  	rename_column :products, :stock, :max_allowed_quantity
  end
end
