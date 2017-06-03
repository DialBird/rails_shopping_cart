# == Schema Information
#
# Table name: carts
#
#  id              :integer          not null, primary key
#  order_status_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryGirl.define do
  factory :cart do
    order_status_id 1
  end
end
