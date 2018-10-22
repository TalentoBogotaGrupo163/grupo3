class CreateUniversityXCities < ActiveRecord::Migration[5.2]
  def change
    create_table :university_x_cities do |t|
      t.references :University, foreign_key: true
      t.references :City, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
