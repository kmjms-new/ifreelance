json.extract! detail_invoice, :id, :name_project, :quantity, :description, :value, :created_at, :updated_at
json.url detail_invoice_url(detail_invoice, format: :json)
