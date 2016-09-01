# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  first_name      :string
#  last_name       :string
#  password_digest :text
#  email           :string
#  authority       :string
#

class User < ActiveRecord::Base
  has_secure_password

  has_many :error
  has_many :likes

end
