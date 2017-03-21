class AddWorkEducationReferenceToJobseeker < ActiveRecord::Migration[5.0]
  def change
    add_reference :jobseekers, :education, foreign_key: true
  end
end
