Rails.application.routes.draw do
 
  get '/' => 'concerts#index', as: :home

  # resources :concerts except [index]

end
