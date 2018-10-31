class CreateDebilities < ActiveRecord::Migration[5.2]
  def change
    create_table :debilities do |t|
      t.string :name_debility
      t.string :description_debility

      t.timestamps
    end
  end
end
