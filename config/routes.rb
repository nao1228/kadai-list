Rails.application.routes.draw do

  get 'seesions/new'
  get 'seesions/create'
  get 'seesions/destroy'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: 'tasks#index'
  resources :users, only: [:show, :new, :create]
  resources :tasks
end
