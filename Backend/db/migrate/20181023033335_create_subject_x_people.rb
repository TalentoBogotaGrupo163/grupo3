class CreateSubjectXPeople < ActiveRecord::Migration[5.2]
  def change
    create_table :subject_x_people do |t|
      t.references :people, foreign_key: true
      t.references :subject, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
