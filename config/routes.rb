Rails.application.routes.draw do

  root :to => 'dashboards#index'
  devise_for :users
  resources :projects
  resources :salaries
  resources :freelances
  resources :invoices
  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
