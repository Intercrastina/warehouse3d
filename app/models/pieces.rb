class Pieces < ActiveRecord::Base
  belongs_to :assembly
  validates :description, presence: true, length: { minimum: 4 }
end
