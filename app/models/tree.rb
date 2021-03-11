class Tree < ApplicationRecord
  belongs_to :category
  belongs_to :neighbourhood
  belongs_to :park

  validates :source_id, :diameter, presence: true
  validates :source_id, uniqueness: true
end
