json.extract! user, :id, :name, :emailid, :password, :usertype, :created_at, :updated_at
json.url user_url(user, format: :json)