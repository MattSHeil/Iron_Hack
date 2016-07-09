Rails.application.routes.draw do
 
  get '/' => 'concerts#index', as: :home

  post '/search' => 'concerts#search', as: :search
 
  get '/popular' => 'concerts#popular', as: :popular

  resources :concerts, only: [:create, :new, :show] do
  	resources :comments, only: [:create]
  end

end
