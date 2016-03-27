class AddBannerToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :banner, :text
  end
end
