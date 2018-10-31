class CreateCityXUniversities < ActiveRecord::Migration[5.2]
  def change
    create_table :city_x_universities do |t|
      t.references :universities, foreign_key: true
      t.references :city, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
