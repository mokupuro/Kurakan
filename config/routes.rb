Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'
  get 'pages/show'

  resources :circles

  # FIXME 下記を追加するとactive Storageの画像のリンクも含まれるため画像が表示されない
  # get '*not_found' => 'application#routing_error'
  post '*not_found' => 'application#routing_error'
end
