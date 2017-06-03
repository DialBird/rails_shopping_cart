class OrderStatus < ActiveHash::Base
  include ActiveHash::Enum

  set_root_path 'config/master'
  set_filename 'order_status'

  enum_accessor :type
end
