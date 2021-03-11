class Park < ApplicationRecord
  has_many :trees, :dependent => :destroy
  has_many :categories, through: :trees
  has_many :neighbourhoods, through: :trees

  validates :park_name, presence: true
  validates :park_name, uniqueness: true
end
