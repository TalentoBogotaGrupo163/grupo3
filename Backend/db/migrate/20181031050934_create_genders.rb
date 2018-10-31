class CreateGenders < ActiveRecord::Migration[5.2]
  def change
    create_table :genders do |t|
      t.string :name_gender

      t.timestamps
    end
  end
end
