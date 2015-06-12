Rails.application.routes.draw do

  resources :users

  resources :boards

  # get 'links/users/:id', to: 'users/show'
  resources :links

  resources :comments

  resources :votes

  root 'welcome#index'

end
