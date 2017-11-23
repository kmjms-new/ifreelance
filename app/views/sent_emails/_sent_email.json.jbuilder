json.extract! sent_email, :id, :date, :sender, :recipient, :type, :subject, :content, :notification_id, :notification_type, :created_at, :updated_at
json.url sent_email_url(sent_email, format: :json)
