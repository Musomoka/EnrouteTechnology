json.extract! contact, :id, :name, :email, :telephone, :body, :created_at, :updated_at
json.url contact_url(contact, format: :json)
