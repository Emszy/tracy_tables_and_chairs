json.extract! user_choice, :id, :table_quantity, :chair_quantity, :city, :price, :created_at, :updated_at
json.url user_choice_url(user_choice, format: :json)