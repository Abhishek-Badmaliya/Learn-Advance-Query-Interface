Rails.application.routes.draw do
  resources :products
  resources :orders
  resources :customers
  resources :pages

  get '/queries', to: 'pages#queries', as: :queries
  root 'pages#queries'
  get '/all_product', to: 'products#all_product', as: :all_product
  get 'display_all_products', to: 'products#display_all_products', as: :display_all_products
  get 'display_active_products', to: 'products#display_active_products', as: :display_active_products
end
