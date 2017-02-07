class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      # t.references :job_types, foreign_key: true
      # t.references :job_categories, foreign_key: true
      t.text :description
      t.string :application_email
      t.string :location
      t.string :company_name
      t.datetime :closing_date
      t.boolean :active, null: false, :defalut => 0

      t.timestamps
    end
    add_index :jobs, :title
  end
end
