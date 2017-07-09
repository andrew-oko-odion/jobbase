class AddHideDefaultToJobType < ActiveRecord::Migration[5.1]
  def change
    change_column :job_types, :hide, :boolean, default: false
  end
end
