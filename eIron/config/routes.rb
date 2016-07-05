Rails.application.routes.draw do
  
  get '/' => 'site#home', as: :home

  get '/all_products' => 'products#all', as: :all

  resources :users do
	resources :products
  end
  
end
