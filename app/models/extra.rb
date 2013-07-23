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

class Extra < ActiveRecord::Base
  belongs_to :step
  validates :name, :description, presence: true, length: { minimum: 4 }
  validates :cost, numericality: true , allow_blank: true 

end
