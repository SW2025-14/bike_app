Rails.application.routes.draw do
  resources :posts do
    post :like, on: :member
    post :unlike, on: :member 
    resources :comments, only: [:create]
  end

  root "posts#index"
end
