# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  name        :text
#  image       :text
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Category < ActiveRecord::Base
    has_and_belongs_to_many :products
end
