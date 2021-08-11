class Restaurant < ApplicationRecord
  CATEGORY = %w[Chinese Italian Japanese French Belgian]

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: CATEGORY, message: "%{value} is not an accepted category" }

  has_many :reviews, dependent: :destroy
end
