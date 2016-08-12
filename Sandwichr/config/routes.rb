Rails.application.routes.draw do

  resources :ingredients, except: [:new, :edit, :update]
  resources :sandwiches, except: [:new, :edit]

  post "/sandwiches/:id/ingredients/add" => "sandwich_ingredient#add"
end
