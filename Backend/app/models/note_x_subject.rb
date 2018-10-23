class NoteXSubject < ApplicationRecord
  belongs_to :note
  belongs_to :subject
end
