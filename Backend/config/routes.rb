Rails.application.routes.draw do
  resources :notes_x_subjects
  resources :notes
  resources :activities_x_subjects
  resources :activities
  resources :subject_x_people
  resources :subjects
  resources :hab_x_people
  resources :deb_x_people
  resources :people
  resources :schools
  resources :type_people
  resources :course_x_entities
  resources :entities
  resources :courses
  resources :university_x_cities
  resources :cities
  resources :benefit_x_universities
  resources :program_x_universities
  resources :universities
  resources :benefits
  resources :programs
  resources :genders
  resources :habilities
  resources :debilities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
