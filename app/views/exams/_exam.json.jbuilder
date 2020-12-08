json.extract! exam, :id, :title, :exam_date, :exam_location, :user_id, :shared, :created_at, :updated_at
json.url exam_url(exam, format: :json)
