class CreateFavourites < ActiveRecord::Migration
  def change
    create_table :favourites do |t|
      t.text :title
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
