class CartsController < ApplicationController
  def show
    @cart_items = current_cart.cart_items
  end
  
  def add_item
    item = current_cart.cart_items.find_by(product_id: params[:product_id])

    if item.blank?
      item = current_cart.cart_items.build(product_id: params[:product_id], quantity: 0)
    end

    item.quantity += params[:quantity].to_i
    item.save
    redirect_to current_cart
  end

  def update_item
    item = current_cart.cart_items.find_by(product_id: params[:product_id])
    item.update(quantity: params[:quantity].to_i)
    item.save
    redirect_to current_cart
  end
end
