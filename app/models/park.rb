class Park < ApplicationRecord
  has_many :trees, :dependent => :destroy
  has_many :categories, through: :trees
  has_many :neighbourhoods, through: :trees

  validates :park_name, presence: true
  validates :park_name, uniqueness: true

  def self.ordered_by_trees
    self.select("parks.*")
        .select("COUNT(parks.id) as tree_count")
        .joins(:trees)
        .group("parks.id")
        .order("tree_count DESC")
  end
end
