class CreateSubjectXPeople < ActiveRecord::Migration[5.2]
  def change
    create_table :subject_x_people do |t|
      t.references :code_person, foreign_key: true
      t.references :code_subject, foreign_key: true
      t.string :decription

      t.timestamps
    end
  end
end
