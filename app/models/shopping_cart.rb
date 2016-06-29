class ShoppingCart < ActiveRecord::Base
  belongs_to :wish
  belongs_to :product
  belongs_to :user
end
