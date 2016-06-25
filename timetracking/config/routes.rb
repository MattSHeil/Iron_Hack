Rails.application.routes.draw do

  get '/' => 'site#home'

  get '/contact' => 'site#contact'

  get '/pizza' => 'test#pizza'

  get '/projects' => 'projects#index'

  get '/projects/new' => 'projects#new'

  post '/projects' => 'projects#create'

  get '/projects/:id' => 'projects#show'

end
