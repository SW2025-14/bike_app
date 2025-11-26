Rails.application.routes.draw do
  root "bikes#index"

  resources :bikes, only: [:index, :show] do
    resources :reviews, only: [:create]
  end

  get "up" => "rails/health#show", as: :rails_health_check
end
