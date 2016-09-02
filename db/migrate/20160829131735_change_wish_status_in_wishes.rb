class ChangeorderStatusInorders < ActiveRecord::Migration
  def change
    def up
      change_column :orders, :order_status, :reference
    end

    def down
      change_column :orders, :order_status, :string
    end
  end
end
