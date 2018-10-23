class CreateHabilityXPeople < ActiveRecord::Migration[5.2]
  def change
    create_table :hability_x_people do |t|
      t.references :hability, foreign_key: true
      t.references :people, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
