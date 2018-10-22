class CreateNotesXSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :notes_x_subjects do |t|
      t.references :Subjects, foreign_key: true
      t.references :Notes, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
