class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.integer :code_note
      t.string :valuenote_note
      t.string :description_note

      t.timestamps
    end
  end
end
