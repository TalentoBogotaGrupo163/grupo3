class CreatePersonXDebilities < ActiveRecord::Migration[5.2]
  def change
    create_table :person_x_debilities do |t|
      t.references :debility, foreign_key: true
      t.references :person, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
