Rails.application.routes.draw do
  resources :fornecedor, only: [:show]
  resources :home
  resources :users
  #resources :account_activations, only: [:edit]
  #resources :password_resets,     only: [:new, :create, :edit, :update]
  
  root   'static_pages#home'
  #get 'tipo_armazenamento/new'

  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get 'fornecedor' => 'fornecedor#show'
end