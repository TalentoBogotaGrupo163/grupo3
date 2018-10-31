class Person < ApplicationRecord
  belongs_to :gender
  belongs_to :school
  belongs_to :city
  belongs_to :type_person
end
