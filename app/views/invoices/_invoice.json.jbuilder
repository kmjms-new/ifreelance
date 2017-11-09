json.extract! invoice, :id, :number, :date_invoice, :end_date, :name_client, :total_value, :state, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
