# == Schema Information
#
# Table name: steps
#
#  id          :integer          not null, primary key
#  order       :integer
#  description :text
#  assembly_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Step < ActiveRecord::Base
  attr_accessible :order, :description

  belongs_to :assembly

  has_many :pieces
  has_many :extras
  has_many :step_links

  validates :description, presence: true, length: { minimum: 10 }
  validates :order, presence: true, numericality: true
end
