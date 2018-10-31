class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.date :birthdate_people
      t.string :address_people
      t.string :email_people
      t.references :gender, foreign_key: true
      t.string :name_people
      t.string :lastname_people
      t.references :school, foreign_key: true
      t.string :phone_people
      t.references :city, foreign_key: true
      t.references :type_person, foreign_key: true
      t.string :password_people

      t.timestamps
    end
  end
end
