class ActivitiesXSubject < ApplicationRecord
  belongs_to :code_subject
  belongs_to :code_activity
end
