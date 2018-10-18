class Person < ApplicationRecord
  belongs_to :code_gender
  belongs_to :code_city
  belongs_to :code_school
  belongs_to :code_type
end
