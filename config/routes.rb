Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'
  get "circles/:id/favorites" => "circles#favorites"

  resources :circles do
    resources :favorites, only: [:create, :destroy]
  end

  resources :circles
  resources :users

  # FIXME 下記を追加するとactive Storageの画像のリンクも含まれるため画像が表示されない
  # get '*not_found' => 'application#routing_error'
  post '*not_found' => 'application#routing_error'
end
