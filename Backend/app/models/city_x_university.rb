class CityXUniversity < ApplicationRecord
  belongs_to :universities
  belongs_to :city
end
