class CreatePrograms < ActiveRecord::Migration[5.2]
  def change
    create_table :programs do |t|
      t.integer :code_program
      t.string :name_program
      t.string :description_program
      t.string :url_program

      t.timestamps
    end
  end
end
