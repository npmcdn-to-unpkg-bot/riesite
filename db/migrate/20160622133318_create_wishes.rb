class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
     t.text     :invoice_number
     t.float    :total_cost
     t.float    :total_tax
     t.float    :discount_amount
     t.integer  :user_id
     t.integer  :order_status_id
     t.datetime :created_at,       null: false
     t.datetime :updated_at,       null: false
     t.text     :order_status
     t.date     :purchase_date
     t.date     :payment_date
     t.date     :shipped_date
     t.date     :finalised_date
     t.float    :total_revenue
     t.text     :delivery_address
     t.string   :shipping_id
      t.timestamps null: false
    end
  end
end
