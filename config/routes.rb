Rails.application.routes.draw do
  resources :users
  get 'welcome/index'

  resources :puzzles

  match 'login' => 'user_sessions#new', :as => :login, via: [:get, :post]
  match 'logout' => 'user_sessions#destroy', :as => :logout, via: [:get, :post]

  root 'welcome#index'
end
