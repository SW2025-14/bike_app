Rails.application.routes.draw do
  # トップページを投稿一覧に設定
  root "posts#index"

  # 投稿リソース
  resources :posts

  # 自転車リソース
  resources :bikes

  # レビューリソース
  resources :reviews
end
