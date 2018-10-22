class CreateCourseXEntities < ActiveRecord::Migration[5.2]
  def change
    create_table :course_x_entities do |t|
      t.references :Entity, foreign_key: true
      t.references :Courses, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
