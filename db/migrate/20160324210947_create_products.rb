class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :name
      t.text :price
      t.text :image
      t.text :description
      t.timestamps
    end
  end
end
