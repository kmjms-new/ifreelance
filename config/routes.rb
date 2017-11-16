Rails.application.routes.draw do
  match '/users',   to: 'users#index',   via: 'get'
  #resources :users, :only =>[:show]
  resources :users
  #match '/users/:id',     to: 'users#show',       via: 'get'
  #match '/users/:id',     to: 'users#show',       via: 'get'
  get 'client_home/index'

  resources :posts
  
  
  resources :hubfiles

  get 'admin/index'

  root 'static_pages#home'
  get 'admin' => 'admin#index'

  devise_for :users, :path_prefix => 'ifreelanceapp', :controllers => { :omniauth_callbacks => "users/omniauth_callbacks", sessions: 'users/sessions' }
  resources :state_projects
  resources :type_projects
  resources :incomes
  resources :freelances
  resources :expenses
  resources :projects
  resources :detail_invoices
  resources :invoices
  resources :clients
  resources :quotation_registries
  
  get 'index' => 'static_pages#index'
  get 'send' => 'send#index'
  post 'send' => 'send#create'
  #get 'clients#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
