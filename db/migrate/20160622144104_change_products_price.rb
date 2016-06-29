class ChangeProductsPrice < ActiveRecord::Migration
  def change
     reversible do |dir|
       change_table :products do |t|
         dir.up   { t.change :price, :string }
         dir.down { t.change :price, :integer }
       end
     end
   end
end
