# == Schema Information
#
# Table name: favorites
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  favorited_id   :integer
#  favorited_type :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :favorited, polymorphic: true
end
