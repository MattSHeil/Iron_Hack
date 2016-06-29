Rails.application.routes.draw do
  get 'time_entries/n'


  get '/' => 'site#home'

  get '/contact' => 'site#contact'

  get '/pizza' => 'test#pizza'

  get '/projects' => 'projects#index'

  get '/projects/new' => 'projects#new', as: :new_project

  post '/projects' => 'projects#create'

  get '/projects/:id' => 'projects#show'

  get '/projects/:project_id/time_entries' => 'time_entries#index'

end
