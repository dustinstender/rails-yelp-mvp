class Restaurant < ApplicationRecord
  CATEGORY = %w[chinese italian japanese french belgian]

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: CATEGORY, message: "%{value} is not an accepted species" }

  has_many :reviews, dependent: :destroy
end
