Rails.application.routes.draw do

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get 'signup', to: 'users#new'
  root to: 'tasks#index'
  resources :users, only: [:create]
  resources :tasks
end
