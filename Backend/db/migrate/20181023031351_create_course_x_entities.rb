class CreateCourseXEntities < ActiveRecord::Migration[5.2]
  def change
    create_table :course_x_entities do |t|
      t.references :entity, foreign_key: true
      t.references :course, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
