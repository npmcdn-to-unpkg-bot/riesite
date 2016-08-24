# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :text
#  password_digest :text
#  created_at      :datetime
#  updated_at      :datetime
#  admin           :boolean          default("false")
#  image           :text
#  username        :text
#

class User < ActiveRecord::Base
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  validates :password, :presence => true, :confirmation => true, :length => {:within => 6..15}
  has_many :favorites, :dependent => :destroy
  has_many :favorited_products, through: :favorites, source: :favorited, source_type: 'Product', :dependent => :destroy
  has_many :wishes, :dependent => :destroy
  has_many :ShoppingCarts, :dependent => :destroy
end
