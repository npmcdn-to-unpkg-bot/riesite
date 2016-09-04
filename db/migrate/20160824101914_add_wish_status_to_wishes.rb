class AddWishStatusToWishes < ActiveRecord::Migration
  def change
    add_column :wishes, :wish_status, :string
  end
end
