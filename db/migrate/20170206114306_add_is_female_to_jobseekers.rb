class AddIsFemaleToJobseekers < ActiveRecord::Migration[5.0]
  def change
    add_column :jobseekers, :is_female, :boolean, default: false
    add_column :jobseekers, :date_of_birth, :datetime
  end
end
