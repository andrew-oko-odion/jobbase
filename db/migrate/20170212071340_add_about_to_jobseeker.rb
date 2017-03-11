class AddAboutToJobseeker < ActiveRecord::Migration[5.0]
  def change
    add_column :jobseekers, :about, :text
  end
end
