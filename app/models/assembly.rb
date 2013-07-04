class Assembly < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :steps
end
