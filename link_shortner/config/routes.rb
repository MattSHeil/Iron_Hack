Rails.application.routes.draw do

	get '/' => 'shortner#new'

	resources :shortenr, only: [:create, :new]

	get '/:shortrul' => 'shortner#index'

end
