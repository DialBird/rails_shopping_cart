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
end
