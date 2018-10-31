class CreateBenefits < ActiveRecord::Migration[5.2]
  def change
    create_table :benefits do |t|
      t.string :name_benefit
      t.string :description_benefit

      t.timestamps
    end
  end
end
