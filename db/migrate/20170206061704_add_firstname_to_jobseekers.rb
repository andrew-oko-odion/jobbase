class AddFirstnameToJobseekers < ActiveRecord::Migration[5.0]
  def change
    add_column :jobseekers, :firstname, :string
    add_column :jobseekers, :lastname, :string
  end
end
