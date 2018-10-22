Rails.application.routes.draw do
  resources :notes_x_subjects
  resources :notes
  resources :activities_x_subjects
  resources :subjects
  resources :activities
  resources :type_people
  resources :course_x_entities
  resources :entities
  resources :courses
  resources :university_x_cities
  resources :cities
  resources :benefit_x_universities
  resources :programs_x_universities
  resources :universities
  resources :benefits
  resources :programs
  resources :habilities
  resources :debilities
  resources :genders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
