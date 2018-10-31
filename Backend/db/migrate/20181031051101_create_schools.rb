class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.string :address_school
      t.string :email_school
      t.string :name_school
      t.string :description_school
      t.string :phone_school
      t.references :city, foreign_key: true
      t.references :type_person, foreign_key: true
      t.string :password_school

      t.timestamps
    end
  end
end
