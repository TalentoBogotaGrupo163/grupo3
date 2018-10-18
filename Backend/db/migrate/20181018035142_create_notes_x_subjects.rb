class CreateNotesXSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :notes_x_subjects do |t|
      t.references :code_note, foreign_key: true
      t.references :code_subject, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
