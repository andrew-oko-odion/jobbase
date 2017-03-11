class CreateEducationTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :education_types do |t|
      t.string :title

      t.timestamps
    end
  end
end
