class CreateActivityXSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :activity_x_subjects do |t|
      t.references :subject, foreign_key: true
      t.references :activity, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
