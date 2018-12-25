json.extract! portfolio, :id, :titel, :description, :portfolio_image, :created_at, :updated_at
json.url portfolio_url(portfolio, format: :json)
