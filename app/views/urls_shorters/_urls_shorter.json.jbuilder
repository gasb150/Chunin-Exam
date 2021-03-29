json.extract! urls_shorter, :id, :created_at, :updated_at
json.url urls_shorter_url(urls_shorter, format: :json)
