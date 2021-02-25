class Tree < ApplicationRecord
  validates :source_id, :diameter, presence: true
  validates :source_id, uniqueness: true
end
