Rails.application.routes.draw do
  mount Tramway::Admin::Engine, at: '/admin'
  mount Tramway::User::Engine, at: '/users'
  root to: 'web/welcome#index'
end
