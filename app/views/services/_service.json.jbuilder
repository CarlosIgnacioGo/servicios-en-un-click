json.extract! service, :id, :title, :description, :price, :address, :email, :phone, :visit_count, :created_at, :updated_at
json.url service_url(service, format: :json)