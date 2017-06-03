Rails.application.routes.draw do
  root 'home#index'

  resources :products
  resources :carts, only: [:show] do
    member do
      post :add_item
    end
  end
end
