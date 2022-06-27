json.extract! payment, :id, :title, :description, :value, :date, :user_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
