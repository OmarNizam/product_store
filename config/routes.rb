Rails.application.routes.draw do
root to: 'products#index'


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :carts,only: [:index]
  resources :users, only: []
  resources :products, only: [:index, :show] do
    resources :carts,only: [:new,:update,:create]
  end

end
