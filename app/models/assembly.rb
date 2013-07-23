# == Schema Information
#
# Table name: assemblies
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  printing_time :integer
#  printing_cost :integer
#  descriptions  :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Assembly < ActiveRecord::Base
  has_many :steps
  has_many :pieces
end
