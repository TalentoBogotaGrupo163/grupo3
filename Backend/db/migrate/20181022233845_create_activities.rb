class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.integer :code_activity
      t.string :name_activity
      t.string :description_activity

      t.timestamps
    end
  end
end
