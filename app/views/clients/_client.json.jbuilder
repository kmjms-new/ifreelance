json.extract! client, :id, :client_name, :client_phone, :client_email, :client_sex, :client_address, :created_at, :updated_at
json.url client_url(client, format: :json)
