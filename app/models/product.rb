# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :text
#  price       :text
#  image       :text
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  imageshow   :text
#

class Product < ActiveRecord::Base
    has_and_belongs_to_many :categories
    has_many :favorites, as: :favorited, dependent: :destroy
    has_many :cart_items, dependent: :destroy
end
