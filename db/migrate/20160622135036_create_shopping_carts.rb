class CreateShoppingCarts < ActiveRecord::Migration
  def change
    create_table :shopping_carts do |t|
      t.integer  "quantity"
      t.float    "unit_cost"
      t.integer  "wish_id"
      t.integer  "product_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.integer  "user_id"
      t.float    "unit_price"
      t.timestamps null: false
    end
  end
end
