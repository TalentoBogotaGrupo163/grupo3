class BenefitXUniversity < ApplicationRecord
  belongs_to :University
  belongs_to :Benefit
end
