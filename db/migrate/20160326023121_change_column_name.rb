class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :categories_products, :categorie_id, :category_id
  end
end
