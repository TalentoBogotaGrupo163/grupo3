Rails.application.routes.draw do
  resources :subject_x_people
  resources :hability_x_people
  resources :debility_x_people
  resources :people
  resources :activity_x_subjects
  resources :note_x_subjects
  resources :notes
  resources :subjects
  resources :activities
  resources :schools
  resources :type_users
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
  resources :habilities
  resources :debilities
  resources :genders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
