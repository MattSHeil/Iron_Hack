Rails.application.routes.draw do
 
  get '/' => 'concerts#index', as: :home

  resources :concerts, only: [:create, :new, :show]

end
