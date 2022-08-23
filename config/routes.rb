Rails.application.routes.draw do
  # get '/articles', to: 'articles#index'
  # resources :articles # for all CRUD actions
  resources :articles, only: [:index]
end
