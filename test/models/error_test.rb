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

require 'test_helper'

class ErrorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
