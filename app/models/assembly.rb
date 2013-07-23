class Assembly < ActiveRecord::Base
  has_many :steps
  has_many :pieces
  validates :name, presence: true, length: { minimum: 3}
  validates :description, presence: true, length: { minimum: 20 }
  validates :printing_cost, :printing_time, presence: true, numericality: true
  validates_associated :pieces, :steps
end

Assembly.create(name:"Aircraft1").valid? #=> true
Assembly.create(name: nil).valid? # => false
