class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.integer :code_subject
      t.string :name_subject
      t.string :description_subject

      t.timestamps
    end
  end
end
