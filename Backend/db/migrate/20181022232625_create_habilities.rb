class CreateHabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :habilities do |t|
      t.integer :code_hability
      t.string :name_hability
      t.string :description_hability

      t.timestamps
    end
  end
end
