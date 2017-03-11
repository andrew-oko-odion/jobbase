class CreateWorkExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :work_experiences do |t|
      t.string :company_name
      t.string :job_title
      t.text :about_role
      t.string :company_website
      t.date :start_date
      t.date :end_date
      t.references :jobseeker, foreign_key: true
      t.timestamps
    end
  end
end
