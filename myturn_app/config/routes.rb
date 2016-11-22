Rails.application.routes.draw do
  resources :agendamentos
  resources :tipoarmazenamentos
  resources :fornecedor
  resources :home
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resource :calendar, only: [:show], controller: :calendar
  root   'static_pages#home'
  
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/fornecedor', to: 'fornecedor#show'
  get '/tipoarmazenamento', to: 'tipoarmazenamentos#index'
  post 'tipoarmazenamento', to: 'tipoarmazenamentos#create'
  get '/calendar', to: 'calendar#show'
  
end