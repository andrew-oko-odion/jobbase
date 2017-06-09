class AddApplicationReferenceToJobseeker < ActiveRecord::Migration[5.0]
  def change
    add_reference :jobseekers, :application, foreign_key: true
  end
end
