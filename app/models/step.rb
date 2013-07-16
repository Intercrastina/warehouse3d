class Step < ActiveRecord::Base
  belongs_to :assembly
  has_many :pieces
  has_many :extras
end
