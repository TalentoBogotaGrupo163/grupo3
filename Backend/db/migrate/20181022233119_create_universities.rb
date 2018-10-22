class CreateUniversities < ActiveRecord::Migration[5.2]
  def change
    create_table :universities do |t|
      t.integer :code_university
      t.string :name_university
      t.string :address_uiversity
      t.string :email_university
      t.string :description_university

      t.timestamps
    end
  end
end
