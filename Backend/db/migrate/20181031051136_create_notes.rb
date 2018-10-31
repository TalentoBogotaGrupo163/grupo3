class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.string :value_note
      t.string :description_note

      t.timestamps
    end
  end
end
