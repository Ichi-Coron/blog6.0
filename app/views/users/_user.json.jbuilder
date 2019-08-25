json.extract! user, :id, :name, :email, :password_digest, :token_digest, :introduction, :image, :created_at, :updated_at
json.url user_url(user, format: :json)
