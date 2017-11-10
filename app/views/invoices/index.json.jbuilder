json.array!(@invoices) do |invoice|
#json.array! @invoices, partial: 'invoices/invoice', as: :invoice
json.extract! invoice, :id, :total_value, :name_client, :state, :currency, :date_invoice
json.url invoice_url(invoice, format: :json)
end
