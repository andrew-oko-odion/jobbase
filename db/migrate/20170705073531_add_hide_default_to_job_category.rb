class AddHideDefaultToJobCategory < ActiveRecord::Migration[5.1]
  def change
    change_column :job_categories, :hide, :boolean, default: false
  end
end
