json.extract! project, :id, :client_id, :freelance_id, :delivery_date, :project_amount, :project_paid, :project_status, :project_details, :project_delete, :created_at, :updated_at
json.url project_url(project, format: :json)
