Rails.application.routes.draw do
  get 'products', to: 'products#index'
  get 'products/new', as: 'new_product'
  post 'products', to: 'products#create'
  get 'products/:id', to: 'products#show', as: 'product'
  resources :products, only: ['destroy'] 


  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
