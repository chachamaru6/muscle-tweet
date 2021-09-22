Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  resources :posts do
   resources :muscle_id
   resources :comments, only: [:create]
  end

end
