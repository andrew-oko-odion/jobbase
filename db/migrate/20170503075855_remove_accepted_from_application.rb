class RemoveAcceptedFromApplication < ActiveRecord::Migration[5.0]
  def change
    remove_column :applications, :accepted, :string
    remove_column :applications, :not_requirement, :string
    remove_column :applications, :for_later, :string
    remove_column :applications, :rejected, :string
    remove_column :applications, :shortlisted, :string
    remove_column :applications, :hired, :string
    remove_column :applications, :interview, :string
    end
end
