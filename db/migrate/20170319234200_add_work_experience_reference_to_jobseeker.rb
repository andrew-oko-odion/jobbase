class AddWorkExperienceReferenceToJobseeker < ActiveRecord::Migration[5.0]
  def change
    add_reference :jobseekers, :work_experience, foreign_key: true
  end
end
