class NotesXSubject < ApplicationRecord
  belongs_to :code_note
  belongs_to :code_subject
end
