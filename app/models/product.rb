class Product < ApplicationRecord
  has_many :reviews
  has_many :line_items, dependent: :destroy
  default_scope -> { order(created_at: :asc) }
  
  validates :title,  presence: true, length: { maximum: 50 }
  validates :price,  presence: true, numericality: { greater_than_or_equal_to: 0.01 }
end
