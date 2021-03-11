class Category < ApplicationRecord
  has_many :trees, :dependent => :destroy
  has_many :neighbourhoods, through: :trees
  has_many :parks, through: :trees

  validates :botanical_name, presence: true
  validates :botanical_name, uniqueness: true
end
