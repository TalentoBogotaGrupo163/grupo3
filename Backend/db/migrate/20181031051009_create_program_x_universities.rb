class CreateProgramXUniversities < ActiveRecord::Migration[5.2]
  def change
    create_table :program_x_universities do |t|
      t.references :universities, foreign_key: true
      t.references :program, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
