Rails.application.routes.draw do
  
  get '/' => 'site#home', as: :home

  get '/become_a_host' => 'site#become_a_host', as: :become_a_host

  get '/help' => 'site#help', as: :help

  get '/sign_up' => 'site#sign_up', as: :sign_up

  get '/log_in' => 'site#log_in', as: :log_in

end