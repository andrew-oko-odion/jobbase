class AddEmployerIdToApplications < ActiveRecord::Migration[5.0]
  def change
    add_reference :applications, :employer, foreign_key: true
  end
end
