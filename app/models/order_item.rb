class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product

  validates_presence_of :order_id
  validates_presence_of :product_id

  def subtotal
    product.price * quantity
  end
end