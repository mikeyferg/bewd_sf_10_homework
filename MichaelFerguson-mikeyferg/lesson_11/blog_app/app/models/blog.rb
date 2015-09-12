# == Schema Information
#
# Table name: blogs
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  author     :string
#  private    :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Blog < ActiveRecord::Base
  belongs_to :user
end
