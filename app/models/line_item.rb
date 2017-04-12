class LineItem < ApplicationRecord
  belongs_to :cart, dependent: :destroy
  belongs_to :product, dependent: :destroy
end
