Rails.application.routes.draw do
  root 'pages#index'
  resources :circles

  # FIXME 下記を追加するとactive Storageの画像のリンクも含まれるため画像が表示されない
  # get '*not_found' => 'application#routing_error'
  post '*not_found' => 'application#routing_error'
end
