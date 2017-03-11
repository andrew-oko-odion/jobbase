class CreateApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :applications do |t|
      t.references :jobseeker, foreign_key: true
      t.references :job, foreign_key: true
      
      t.timestamps
    end
  end
end
