Rails.application.routes.draw do
  root "bikes#index"

  resources :bikes

  resources :posts do
    member do
      post :like
      post :unlike
    end

    resources :comments, only: [:create]
  end
end
