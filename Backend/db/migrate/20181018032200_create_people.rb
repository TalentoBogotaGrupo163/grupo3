class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.integer :code_person
      t.string :name_person
      t.date :age_person
      t.string :address_person
      t.references :code_gender, foreign_key: true
      t.references :code_city, foreign_key: true
      t.references :code_school, foreign_key: true
      t.references :code_type, foreign_key: true
      t.string :password_person

      t.timestamps
    end
  end
end
