Rails.application.routes.draw do


  resources :sent_emails
  resources :credit_payments
  root :to => 'dashboards#index'
  devise_for :users
  resources :projects
  resources :salaries
  resources :freelances
  resources :invoices
  resources :clients

  resources :payments do
      collection do
        get 'enter_payment'
        put 'update_individual_payment'
        get 'filter_payments'
        get 'bulk_actions'
        get 'undo_actions'
        get 'payments_history'
        get 'invoice_payments_history'
        post 'delete_non_credit_payments'
      end
    end

    resources :invoices do
      
      collection do
        get 'filter_invoices'
        get 'bulk_actions'
        get 'undo_actions'
        post 'duplicate_invoice'
        get 'enter_single_payment'
        get 'send_invoice'
        post 'paypal_payments'
        get  'paypal_payments'
        post 'preview'
        get 'preview'
        get 'credit_card_info'
        get 'selected_currency'
      end
    end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
