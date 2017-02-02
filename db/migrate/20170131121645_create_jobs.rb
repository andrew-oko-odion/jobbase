class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.date :close_date
      t.text :description
      t.decimal :salary
      t.string :location
      t.string :application_email
      t.string :company_name
      t.string :company_email
      t.string :company_website
      t.string :company_address
      t.text :about_company

      t.timestamps
    end
    add_index :jobs, :application_email
    add_index :jobs, :company_name
    add_index :jobs, :title
    add_reference :jobs, :job_type, index: true
    add_reference :jobs, :job_category, index: true
  end
end
