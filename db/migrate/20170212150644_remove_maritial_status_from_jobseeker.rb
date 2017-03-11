class RemoveMaritialStatusFromJobseeker < ActiveRecord::Migration[5.0]
  def change
    remove_column :jobseekers, :marital_status, :boolean
    remove_column :jobseekers, :country, :string
    remove_column :jobseekers, :state, :string
  end
end
