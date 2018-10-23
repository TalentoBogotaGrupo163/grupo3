class CreateNoteXSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :note_x_subjects do |t|
      t.references :note, foreign_key: true
      t.references :subject, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
