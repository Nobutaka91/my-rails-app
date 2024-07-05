Rails.application.routes.draw do
  # get "/posts/:id", to: "p  osts#show", as: "post" # post_path(:id) 

  root "posts#index"
  
  resources :posts

end
