Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get "/" => 'home#index', as: :home
  #
  # get "/about" => 'home#about'
  #
  # get "/contact" => 'home#contact'
  #
  # post "/contact_submit" => 'home#contact_submit'
  #
  # get "/products/new" => 'products#new', as: :new_product
  #
  # post "/products" => 'products#create', as: :products
  #
  # get "/products/:id" => 'products#show', as: :product
  #
  # get "/products" => 'products#index'
  #
  # get '/products/:id/edit' => 'products#edit', as: :edit_product
  #
  # patch '/products/:id' => 'products#update'
  #
  # delete 'products/:id' => 'products#destroy'

  resources :products, only: [:index, :show, :destroy]

end
