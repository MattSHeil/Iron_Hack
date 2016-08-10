Rails.application.routes.draw do

  # get "/posts" => "posts#index", as: :posts
  # get "/posts/new" => "posts#new", as: :new_post
  # post "/posts" => "posts#create"
  resources :posts, only:[:index, :new, :create]
  get "/posts/:id" => "posts#show", as: :post

  post "/posts/:id/up" => "posts#vote_up"
  post "/posts/:id/down" => "posts#vote_down"

end
