Rails.application.routes.draw do

	resources :sandwiches, only: [:index, :show], controller: "sandwich_views"

	scope "/api" do
	  resources :ingredients, except: [:new, :edit]
	  resources :sandwiches, except: [:new, :edit]
	  post "/sandwiches/:id/ingredients/add" => "sandwich_ingredient#add"
	end

end
