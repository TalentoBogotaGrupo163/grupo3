class School < ApplicationRecord
  belongs_to :city
  belongs_to :type_person
end
