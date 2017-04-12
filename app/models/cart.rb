class Cart < ApplicationRecord
  belongs_to :user
  has_many :line_items, dependent: :destroy
  
  
  def empty?
    self.line_items.count == 0
  end
  
  def total
    sum = 0
    self.line_items.each { |line| sum += line.product.price}
    return sum
  end
end
