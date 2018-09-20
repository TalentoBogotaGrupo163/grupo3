class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.integer :code_city
      t.string :name_city
      t.string :description_city

      t.timestamps
    end
  end
end
