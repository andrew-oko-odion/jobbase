class AddMarritialstatusToJobseeker < ActiveRecord::Migration[5.0]
  def change
    #add_column :jobseekers, :country, :string
    #add_column :jobseekers, :state, :string
    add_column :jobseekers, :about, :text
    add_column :jobseekers, :marital_status, :boolean
    #add_reference :jobseekers, :education

    # add_reference :jobseekers, :work_experience
  end
end
