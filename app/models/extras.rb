class Extras < ActiveRecord::Base
  belongs_to :step
  validates :description, presence: true, length: { minimum: 4 }
  validates :cost, numericality: true , allow_blank: true # no ponemos que se requiera presence:true

end
