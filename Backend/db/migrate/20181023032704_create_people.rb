class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.integer :code_person
      t.string :name_person
      t.date :age_person
      t.string :address_person
      t.string :email_person
      t.references :gender, foreign_key: true
      t.references :city, foreign_key: true
      t.references :school, foreign_key: true
      t.references :type_users, foreign_key: true
      t.string :password_person

      t.timestamps
    end
  end
end
