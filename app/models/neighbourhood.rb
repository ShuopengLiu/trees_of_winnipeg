class Neighbourhood < ApplicationRecord
  has_many :trees, :dependent => :destroy
  has_many :categories, through: :trees
  has_many :parks, through: :trees

  validates :neighbourhood_name, presence: true
  validates :neighbourhood_name, uniqueness: true
end
