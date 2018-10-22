class NotesXSubject < ApplicationRecord
  belongs_to :Subjects
  belongs_to :Notes
end
