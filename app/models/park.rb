class Park < ApplicationRecord
  validates :park_name, presence: true
  validates :park_name, uniqueness: true
end
