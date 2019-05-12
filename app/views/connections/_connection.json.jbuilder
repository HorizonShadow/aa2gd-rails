json.extract! connection, :id, :id, :name, :type, :revoked, :visibility, :created_at, :updated_at
json.url connection_url(connection, format: :json)
