json.extract! requesting_user, :id, :created_at, :updated_at
json.url requesting_user_url(requesting_user, format: :json)
