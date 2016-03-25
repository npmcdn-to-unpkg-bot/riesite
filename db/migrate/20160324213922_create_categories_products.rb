class CreateCategoriesProducts < ActiveRecord::Migration
  def change
    create_table :categories_products do |t|
      t.integer :categorie_id
      t.integer :product_id
    end
  end
end
