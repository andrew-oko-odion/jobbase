class ChangeMaritialStatusToJobseeker < ActiveRecord::Migration[5.0]
  def change
    change_column_null :jobseekers, :marital_status, false 
  end
end
