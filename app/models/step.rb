class Step < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :assembly
end
