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
#

class User < ActiveRecord::Base
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  has_many :favorites, :dependent => :destroy
  has_many :favorited_products, through: :favorites, source: :favorited, source_type: 'Product'
end
