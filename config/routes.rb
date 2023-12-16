Rails.application.routes.draw do
  root 'root#index'
  namespace :api do
    get 'index', to: 'messages#index'
  end
end
