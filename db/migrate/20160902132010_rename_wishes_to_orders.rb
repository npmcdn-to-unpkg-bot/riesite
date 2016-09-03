class RenameWishesToOrders < ActiveRecord::Migration
  def change
    rename_table :wishes, :orders
  end
end
