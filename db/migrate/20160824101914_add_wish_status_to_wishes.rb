class AddorderStatusToorders < ActiveRecord::Migration
  def change
    add_column :orders, :order_status, :string
  end
end
