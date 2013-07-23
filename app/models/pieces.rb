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

class Pieces < ActiveRecord::Base
  belongs_to :assembly 
end
