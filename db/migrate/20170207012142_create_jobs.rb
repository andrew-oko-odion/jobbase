class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.references :job_type
      t.references :job_category
      t.text :description
      t.string :application_email
      t.string :location
      t.string :company_name
      t.datetime :closing_date
      
      t.boolean :active, defalut: false

      t.timestamps
    end
    add_index :jobs, :title
  end
end
