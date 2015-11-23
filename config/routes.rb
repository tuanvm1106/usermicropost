Rails.application.routes.draw do
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :account_activations, only: [:edit]
  resources :users
  resources :microposts, only: [:create, :destroy]
  root 'static_pages#home'
  get 'home' => 'static_pages#about'
  get 'help' => 'static_pages#help'
  get 'contact' => 'static_pages#contact'
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'new_password_reset' => 'password_resets#new'
end
