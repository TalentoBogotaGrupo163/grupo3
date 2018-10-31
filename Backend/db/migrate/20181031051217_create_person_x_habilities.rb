class CreatePersonXHabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :person_x_habilities do |t|
      t.references :hability, foreign_key: true
      t.references :person, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
