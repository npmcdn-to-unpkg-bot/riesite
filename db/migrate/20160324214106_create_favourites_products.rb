class CreateFavouritesProducts < ActiveRecord::Migration
  def change
    create_table :favourites_products do |t|
      t.integer :favourite_id
      t.integer :product_id
    end
  end
end
