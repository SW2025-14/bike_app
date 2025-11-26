Rails.application.routes.draw do
  # トップページ（投稿一覧）を root に設定
  root do
    controller :posts do
      action :index
    end
  end

  resources :posts
  resources :bikes
  resources :reviews
end
