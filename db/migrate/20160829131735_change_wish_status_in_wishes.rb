class ChangeWishStatusInWishes < ActiveRecord::Migration
  def change
    def up
      change_column :wishes, :wish_status, :reference
    end

    def down
      change_column :wishes, :wish_status, :string
    end
  end
end
