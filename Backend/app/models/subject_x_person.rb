class SubjectXPerson < ApplicationRecord
  belongs_to :people
  belongs_to :subject
end
