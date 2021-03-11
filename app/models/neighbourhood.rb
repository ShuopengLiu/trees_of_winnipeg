class Neighbourhood < ApplicationRecord
  has_many :trees, :dependent => :destroy
  has_many :categories, through: :trees
  has_many :parks, through: :trees

  validates :neighbourhood_name, presence: true
  validates :neighbourhood_name, uniqueness: true

  def self.ordered_by_trees
    self.select("neighbourhoods.*")
        .select("COUNT(neighbourhoods.id) as tree_count")
        .joins(:trees)
        .group("neighbourhoods.id")
        .order("tree_count DESC")
  end
end
