class CreateUniversityXCities < ActiveRecord::Migration[5.2]
  def change
    create_table :university_x_cities do |t|
      t.references :university, foreign_key: true
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
