json.extract! consultation, :id, :title, :name_of_professional, :consultation_date, :user_id, :shared_with, :created_at, :updated_at
json.url consultation_url(consultation, format: :json)
