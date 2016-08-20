Rails.application.routes.draw do
  root to: 'static_pages#home'
  devise_for :users
  get '/users/:id' => 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
