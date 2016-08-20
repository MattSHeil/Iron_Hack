Rails.application.routes.draw do

 	devise_for :users

	root to: 'static_pages#home' 
	resources :sandwiches, only: [:index, :show], controller: "sandwich_views"
	scope "/api" do 
	  	resources :sandwiches
	    resources :ingredients
	    post "/sandwiches/:id/ingredients/add" => "sandwiches#add_ingredient"
	 end
	 get 'users/:id' => 'users#show', as: :the_user

end
