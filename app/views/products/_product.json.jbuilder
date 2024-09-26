json.extract! product, :id, :user_name, :product_name, :quantity, :affiliation, :created_at, :updated_at
json.url product_url(product, format: :json)
