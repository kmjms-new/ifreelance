json.extract! payment, :id, :invoice_id, :payment_amount, :payment_type, :payment_method, :payment_date, :notes, :send_payment_notification, :paid_full, :archive_number, :credit_applied, :status, :client_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
