class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product

  validates_presence_of :order_id, :product_id, :quantity
  validates_numericality_of :quantity, greater_than: 0

  def subtotal
    product.price * quantity
  end
end