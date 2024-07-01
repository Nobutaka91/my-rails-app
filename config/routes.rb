Rails.application.routes.draw do
  root to: "posts#index", as: "posts" # posts_path
  get "/posts/:id", to: "posts#show", as: "post" # post_path(:id) 
end
