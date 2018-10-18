class CreateBenefitXUniversities < ActiveRecord::Migration[5.2]
  def change
    create_table :benefit_x_universities do |t|
      t.references :code_benefit, foreign_key: true
      t.references :code_university, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
