class AddMarriedToJobseeker < ActiveRecord::Migration[5.0]
  def change
    add_column :jobseekers, :married, :boolean
  end
end
