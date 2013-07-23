# == Schema Information
#
# Table name: pieces
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  assembly_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class PiecesTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
