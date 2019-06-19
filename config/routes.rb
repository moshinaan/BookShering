Rails.application.routes.draw do
  get 'sessions/new'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :books

  mount Tramway::Admin::Engine, at: '/admin'
  mount Tramway::Auth::Engine, at: '/auth'  
  root to: 'web/welcome#index'
  resources :users

end
