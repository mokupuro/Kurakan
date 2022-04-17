Rails.application.routes.draw do
  root 'pages#index'
  get "circles/:id/favorites" => "circles#favorites"

  devise_for :admin_users, controller: {
    sessions: 'admin_users/sessions',
    passwords: 'admin_users/passwords',
    registrations: 'admin_users/registrations'
  }
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }

  resources :circles
  resources :circles do
    resources :favorites, only: [:create, :destroy]
  end

  resources :users

  # FIXME 下記を追加するとactive Storageの画像のリンクも含まれるため画像が表示されない
  # get '*not_found' => 'application#routing_error'
  post '*not_found' => 'application#routing_error'
end
