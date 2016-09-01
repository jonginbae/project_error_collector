# == Schema Information
#
# Table name: errors
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  content    :text
#  image      :text
#  area       :string
#  language   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Error < ActiveRecord::Base
  belongs_to :user
  has_many :likes
  has_one :area
  has_many :languages , :through => :area

end
