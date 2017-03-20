json.extract! lesson_subject, :id, :lesson_id, :subject_id, :created_at, :updated_at
json.url lesson_subject_url(lesson_subject, format: :json)
