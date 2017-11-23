json.extract! credit_payment, :id, :amount, :payment_id, :invoice_id, :created_at, :updated_at
json.url credit_payment_url(credit_payment, format: :json)
