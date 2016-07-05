Rails.application.routes.draw do
  get 'time_entries/n'


  get '/' => 'site#home'

  get '/contact' => 'site#contact' 

  resources :projects, only: [:index, :show, :new, :create] do
  	resources :time_entries, only: [:index, :show, :new, :create, :edit, :update]
  end

  # get 'project/:project_id/time_entries/:id/edit' => 'time_entries#edit'

  # get '/pizza' => 'test#pizza'

  # get '/projects' => 'projects#index'

  # get '/projects/new' => 'projects#new', as: :new_project

  # post '/projects' => 'projects#create'

  # get '/projects/:id' => 'projects#show'

  # get '/projects/:project_id/time_entries' => 'time_entries#index'

  # get '/projects/:project_id/time_entries/new' => 'time_entries#new'

end
