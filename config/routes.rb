Rails.application.routes.draw do

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get 'sessions/new'
  
  resources :books
  post '/books/:id(.:format)', to: 'book_case#create'

  mount Tramway::Admin::Engine, at: '/admin'
  mount Tramway::Auth::Engine, at: '/auth'  
  root to: 'web/welcome#index'
  resources :users
  resources :heading

end
