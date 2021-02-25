class Category < ApplicationRecord
  validates :botanical_name, :common_name, presence: true
  validates :botanical_name, uniqueness: true
end
