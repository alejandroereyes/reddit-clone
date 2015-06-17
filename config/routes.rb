Rails.application.routes.draw do

  resources :users

  get '/boards/links/:id', to: 'links#show'
  get '/boards/users/:id', to: 'users#show'
  resources :boards

  # get 'links/users/:id', to: 'users/show'
  resources :links

  resources :comments

  get  'login', to: 'sessions#new',    as: 'login'
  post 'login', to: 'sessions#create', as: 'create_session'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  post 'votes/upvote', to: 'votes#upvote'
  post 'votes/downvote', to: 'votes#downvote'
  resources :votes

  root 'welcome#index'

end
