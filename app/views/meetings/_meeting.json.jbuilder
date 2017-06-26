json.extract! meeting, :id, :title, :body, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
