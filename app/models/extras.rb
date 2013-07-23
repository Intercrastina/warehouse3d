# == Schema Information
#
# Table name: extras
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  cost        :integer
#  step_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Extras < ActiveRecord::Base
  belongs_to :step
end
