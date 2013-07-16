class Assembly < ActiveRecord::Base
  has_many :steps
  has_many :pieces
end
