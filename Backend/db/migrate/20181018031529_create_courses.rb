class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.integer :code_course
      t.string :name_course
      t.string :description_course
      t.string :url_course

      t.timestamps
    end
  end
end
