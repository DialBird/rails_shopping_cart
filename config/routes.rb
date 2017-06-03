Rails.application.routes.draw do
  root 'home#index'

  resources :products
  resources :carts, only: [:show] do
    member do
      post :add_item
      post :update_item
    end
  end
  resources :cart_items, only: [:destroy]
end
