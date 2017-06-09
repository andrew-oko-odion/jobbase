class AddFlagsToApplication < ActiveRecord::Migration[5.0]
  def change
    add_column :applications, :hired, :boolean, default: false
    add_column :applications, :not_requirement, :boolean, default: false
    add_column :applications, :shortlisted, :boolean, default: false
    add_column :applications, :interview, :boolean, default: false
    add_column :applications, :accepted, :boolean, default: false
    add_column :applications, :for_later, :boolean, default: false
    add_column :applications, :rejected, :boolean, default: false
  end
end
