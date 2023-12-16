Rails.application.routes.draw do
  namespace :api do
    root 'messages#index'
    get 'index', to: 'messages#index'
  end
  root to: redirect('/api/index')
end
