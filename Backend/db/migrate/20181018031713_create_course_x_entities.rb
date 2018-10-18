class CreateCourseXEntities < ActiveRecord::Migration[5.2]
  def change
    create_table :course_x_entities do |t|
      t.references :code_entity, foreign_key: true
      t.references :code_course, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
