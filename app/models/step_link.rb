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

class StepLink < ActiveRecord::Base
  belongs_to :step

  has_one :piece
  has_one :extra
end
