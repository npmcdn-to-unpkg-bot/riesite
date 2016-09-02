class RemoveWishStatusFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :wish_status, :reference
  end
end
