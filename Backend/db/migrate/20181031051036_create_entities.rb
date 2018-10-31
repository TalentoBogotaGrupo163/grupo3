class CreateEntities < ActiveRecord::Migration[5.2]
  def change
    create_table :entities do |t|
      t.string :name_entity
      t.string :address_entity
      t.string :description_entity

      t.timestamps
    end
  end
end
