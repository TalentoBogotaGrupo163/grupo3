class CreateDebXPeople < ActiveRecord::Migration[5.2]
  def change
    create_table :deb_x_people do |t|
      t.references :code_debility, foreign_key: true
      t.references :code_person, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
