class Restaurant < ApplicationRecord
  category_list = %w[chinese italian japanese french belgian]
  has_many :reviews, dependent: :destroy
  validates :name, :address, :phone_number, presence: true
  validates :category, inclusion: { in: category_list }, presence: true
end
