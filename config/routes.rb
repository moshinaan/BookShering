Rails.application.routes.draw do
  get 'sessions/new'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :microposts


  mount Tramway::Admin::Engine, at: '/admin'
  mount Tramway::User::Engine, at: '/users'
  root to: 'web/welcome#index'
  resources :users

end
