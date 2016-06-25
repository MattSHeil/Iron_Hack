Rails.application.routes.draw do

  get '/' => 'site#home'

  get '/contact' => 'site#contact'

  get '/pizza' => 'test#pizza'

  get '/projects' => 'projects#index'

end
