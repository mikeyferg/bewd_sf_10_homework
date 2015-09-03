# == Schema Information
#
# Table name: animals
#
#  id         :integer          not null, primary key
#  species    :string
#  age        :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Animal < ActiveRecord::Base
end
