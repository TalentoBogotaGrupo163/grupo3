class Person < ApplicationRecord
  belongs_to :gender
  belongs_to :city
  belongs_to :school
  belongs_to :type_users
end
