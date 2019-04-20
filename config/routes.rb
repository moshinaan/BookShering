Rails.application.routes.draw do
  get 'users/new'

  mount Tramway::Admin::Engine, at: '/admin'
  mount Tramway::User::Engine, at: '/users'
  root to: 'web/welcome#index'
  resources :users

end
