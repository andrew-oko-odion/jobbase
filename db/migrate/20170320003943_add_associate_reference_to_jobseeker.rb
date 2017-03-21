class AddAssociateReferenceToJobseeker < ActiveRecord::Migration[5.0]
  def change
    add_reference :jobseekers, :associate, foreign_key: true
  end
end
