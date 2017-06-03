# == Schema Information
#
# Table name: carts
#
#  id              :integer          not null, primary key
#  order_status_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Cart < ApplicationRecord
  has_many :cart_items

  def total_price
    total = 0
    cart_items.each do |cart_item|
      total += cart_item.product.price * cart_item.quantity
    end
    total
  end
end
