# == Schema Information
#
# Table name: favourites
#
#  id         :integer          not null, primary key
#  title      :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Favourite < ActiveRecord::Base
  has_and_belongs_to_many :users
end
