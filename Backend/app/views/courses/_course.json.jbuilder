json.extract! course, :id, :name_course, :description_benefit, :url_course, :created_at, :updated_at
json.url course_url(course, format: :json)
