Rails.application.routes.draw do
  root to: 'top#index'
  get 'signup', to: 'users#new'
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  resources :users, only: [:create, :show ]  
end
