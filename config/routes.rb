Rails.application.routes.draw do
  root "posts#index"
  
  resources :posts do
    resources :comments, only: [:create, :destroy] # ポストとコメントを紐づけるルーティングの設定
  end

end
