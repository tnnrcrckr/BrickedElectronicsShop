class Review < ApplicationRecord
  belongs_to :user
  belongs_to :product
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 2500 }
end
