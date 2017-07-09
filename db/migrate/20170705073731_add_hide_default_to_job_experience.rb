class AddHideDefaultToJobExperience < ActiveRecord::Migration[5.1]
  def change
     change_column :job_experiences, :hide, :boolean, default: false
  end
end
