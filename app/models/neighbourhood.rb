class Neighbourhood < ApplicationRecord
  validates :neighbourhood_name, presence: true
  validates :neighbourhood_name, uniqueness: true
end
