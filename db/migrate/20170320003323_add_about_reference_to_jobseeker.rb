class AddAboutReferenceToJobseeker < ActiveRecord::Migration[5.0]
  def change
    add_reference :jobseekers, :about, foreign_key: true
  end
end
