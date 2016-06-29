Rails.application.routes.draw do

  get '/' => 'site#home', as: :home

  get '/contacts/new' => 'contacts#new', as: :new
  
  get '/contacts/:comand' => 'contacts#index'

  post '/contacts' =>  'contacts#create'
 
end
