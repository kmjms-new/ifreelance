Rails.application.routes.draw do
  get 'admin/index'

  root 'static_pages#home'
  get 'admin' => 'admin#index'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :invoices, except: [:edit, :update, :destroy] do
    collection do
      match 'search' => 'invoices#search', via: [:get, :post], as: :search
    end
  end

  resources :state_projects
  resources :type_projects
  resources :incomes
  resources :freelances
  resources :expenses
  resources :projects
  resources :detail_invoices

  resources :clients
  resources :quotation_registries

  get 'index' => 'static_pages#index'
  get 'send' => 'send#index'
  post 'send' => 'send#create'
  #get 'clients#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
