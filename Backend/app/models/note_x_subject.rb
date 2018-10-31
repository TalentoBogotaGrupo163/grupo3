class NoteXSubject < ApplicationRecord
  belongs_to :subject
  belongs_to :note
end
