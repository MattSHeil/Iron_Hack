Rails.application.routes.draw do
  
  get '/' => 'site#home', as: :home

  get '/all_products' => 'products#all', as: :all

  post '/products/:id/bids' => 'bid#create', as: :product_bids

  resources :users do
	resources :products
  end
  
end