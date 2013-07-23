# == Schema Information
#
# Table name: assemblies
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  printing_time :integer
#  printing_cost :integer
#  description   :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class AssemblyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
