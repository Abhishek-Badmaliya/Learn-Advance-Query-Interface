json.extract! order, :id, :quantity, :total_price, :order_status, :created_at, :updated_at
json.url order_url(order, format: :json)
