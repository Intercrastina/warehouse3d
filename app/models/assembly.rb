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

class Assembly < ActiveRecord::Base
  attr_accessible :name, :printing_cost, :printing_time, :description

  has_many :steps
  has_many :pieces
  validates :name, presence: true, length: { minimum: 3}
  validates :description, presence: true, length: { minimum: 20 }
  validates :printing_cost, :printing_time, presence: true, numericality: true
  validates_associated :pieces, :steps
end

# Assembly.create(name:"Aircraft1", description: "Wadus")
# Assembly.create(name: nil).valid? # => false
