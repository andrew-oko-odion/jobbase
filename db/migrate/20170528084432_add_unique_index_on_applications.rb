class AddUniqueIndexOnApplications < ActiveRecord::Migration[5.0]
  def change
    add_index :applications, [:jobseeker_id, :job_id], :unique => true
  end
end
