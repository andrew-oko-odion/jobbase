class RemoveEducationReferenceFromJobseekers < ActiveRecord::Migration[5.0]
  def change
    remove_reference :jobseekers, :educations
    remove_reference :jobseekers, :work_experiences
    remove_column :jobseekers, :about, :text
  end
end
