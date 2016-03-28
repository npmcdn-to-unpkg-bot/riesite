class AddImageshowToProducts < ActiveRecord::Migration
  def change
    add_column :products, :imageshow, :text
  end
end
