class CreateProgramsXUniversities < ActiveRecord::Migration[5.2]
  def change
    create_table :programs_x_universities do |t|
      t.references :Programs, foreign_key: true
      t.references :University, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
