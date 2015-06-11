Rails.application.routes.draw do

  resources :users

  resources :boards

  resources :links

  resources :comments

  resources :votes

  root 'welcome#index'

end
