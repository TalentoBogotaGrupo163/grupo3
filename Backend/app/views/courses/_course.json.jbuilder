json.extract! course, :id, :code_course, :name_course, :description_course, :url_course, :created_at, :updated_at
json.url course_url(course, format: :json)
