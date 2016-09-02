class RenameShoppingCartToItems < ActiveRecord::Migration
  def change
    rename_table :shopping_carts, :cart_items
  end
end
