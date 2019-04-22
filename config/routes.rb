Rails.application.routes.draw do
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'



  mount Tramway::Admin::Engine, at: '/admin'
  mount Tramway::User::Engine, at: '/users'
  root to: 'web/welcome#index'
  resources :users

end
