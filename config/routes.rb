Rails.application.routes.draw do
  get "home/index"
  get "posts/index"
  get "posts/new"
  get "posts/create"
  get "posts/show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "bikes#index"

  resources :bikes, only: [:index, :show] do
    resources :reviews, only: [:create]
  end
 d4ef78327ea74564ec142c047cd97da9505124c1

  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  resources :posts
  root "posts#index" 
  # root "posts#index"
  


end
