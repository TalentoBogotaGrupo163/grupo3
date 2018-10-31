Rails.application.routes.draw do
  resources :person_x_habilities
  resources :person_x_debilities
  resources :people
  resources :note_x_subjects
  resources :notes
  resources :activity_x_subjects
  resources :subjects
  resources :activities
  resources :schools
  resources :type_people
  resources :course_x_entities
  resources :entities
  resources :courses
  resources :city_x_universities
  resources :cities
  resources :program_x_universities
  resources :benefit_x_universities
  resources :universities
  resources :benefits
  resources :programs
  resources :habilities
  resources :debilities
  resources :genders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
