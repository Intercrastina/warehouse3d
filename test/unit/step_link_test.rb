# == Schema Information
#
# Table name: step_links
#
#  id         :integer          not null, primary key
#  step_id    :integer
#  piece_id   :integer
#  extra_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class StepLinkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
