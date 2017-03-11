class CreateEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :educations do |t|
      t.string :certificate_title
      t.string :school_name
      t.string :school_website
      t.date :start_date
      t.date :end_date
      t.references :education_type, foreign_key: true
      t.references :jobseeker, foreign_key: true
      t.timestamps
    end
  end
end
