class CreateGenders < ActiveRecord::Migration[5.2]
  def change
    create_table :genders do |t|
      t.integer :code_gender
      t.string :name_gender

      t.timestamps
    end
  end
end
