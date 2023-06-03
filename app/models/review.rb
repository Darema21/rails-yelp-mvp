class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true, allow_blank: false
  validates :rating, numericality: { only_integer: true }, inclusion: { in: 0..5 }, presence: true, allow_blank: false
end
