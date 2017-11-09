json.extract! project, :id, :name_project, :description, :star_date, :end_date, :name_client, :state_project, :type_project, :price, :progress, :created_at, :updated_at
json.url project_url(project, format: :json)
