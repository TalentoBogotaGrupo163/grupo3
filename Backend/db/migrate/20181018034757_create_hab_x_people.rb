class CreateHabXPeople < ActiveRecord::Migration[5.2]
  def change
    create_table :hab_x_people do |t|
      t.references :code_hability, foreign_key: true
      t.references :code_person, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
