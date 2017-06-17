class AddJobseekerIdToQuestion < ActiveRecord::Migration[5.0]
  def change
    add_reference :questions, :jobseeker, foreign_key: true
  end
end
