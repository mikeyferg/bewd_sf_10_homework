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

require 'test_helper'

class AnimalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
