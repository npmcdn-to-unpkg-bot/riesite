class Wish < ActiveRecord::Base
  belongs_to :user
  has_many :ShoppingCarts
end