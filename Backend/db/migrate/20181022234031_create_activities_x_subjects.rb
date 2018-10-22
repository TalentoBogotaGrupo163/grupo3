class CreateActivitiesXSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :activities_x_subjects do |t|
      t.references :Subjects, foreign_key: true
      t.references :Activities, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
