class CreateTypePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :type_people do |t|
      t.string :name_type

      t.timestamps
    end
  end
end
