class CartsController < ApplicationController
  def show
    @cart_items = current_cart.cart_items
  end
  
  def add_item
    if current_cart.cart_items.find_by(product_id: params[:product_id])
      item = current_cart.cart_items.find_by(product_id: params[:product_id])
      item.quantity += params[:quantity].to_i
    else
      item = current_cart.cart_items.build(quantity: params[:quantity], product_id: params[:product_id])
    end
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
