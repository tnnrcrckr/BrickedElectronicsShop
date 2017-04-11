class Product < ApplicationRecord
  has_many :reviews
  has_many :line_items
  default_scope -> { order(created_at: :desc) }
end
