class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.integer :code_school
      t.string :name_school
      t.string :address_school
      t.string :phone_school
      t.string :email_school
      t.references :code_city, foreign_key: true
      t.references :code_type, foreign_key: true
      t.string :password_school

      t.timestamps
    end
  end
end
