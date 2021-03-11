class Category < ApplicationRecord
  has_many :trees, dependent: :destroy
  has_many :neighbourhoods, through: :trees
  has_many :parks, through: :trees

  validates :botanical_name, presence: true
  validates :botanical_name, uniqueness: true

  def self.ordered_by_trees
    self.select("categories.*")
        .select("COUNT(categories.id) as tree_count")
        .joins(:trees)
        .group("categories.id")
        .order("tree_count DESC")
  end
end
