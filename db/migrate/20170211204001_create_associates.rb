class CreateAssociates < ActiveRecord::Migration[5.0]
  def change
    create_table :associates do |t|
      t.string :title
      t.text :description
      t.date :start_date
      t.date :end_date
      t.string :website
      t.references :jobseeker, foreign_key: true
      t.timestamps
    end
  end
end
