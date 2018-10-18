class CreateTypePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :type_people do |t|
      t.integer :code_type
      t.string :name_type

      t.timestamps
    end
  end
end
