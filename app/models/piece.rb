# == Schema Information
#
# Table name: pieces
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  assembly_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Piece < ActiveRecord::Base
  belongs_to :assembly
  validates :name, :description, presence: true, length: { minimum: 4 }
end
