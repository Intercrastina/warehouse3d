class Step < ActiveRecord::Base
  belongs_to :assembly
  has_many :pieces
  has_many :extras
  validates :description, presence: true, length: { minimum: 10 }
end
