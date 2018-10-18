class SubjectXPerson < ApplicationRecord
  belongs_to :code_person
  belongs_to :code_subject
end
