class AddFullnameToJobseeker < ActiveRecord::Migration[5.0]
  def change
    add_column :jobseekers, :fullname, :string, null: :false 
  end
end
