class AddEmployerIdToJob < ActiveRecord::Migration[5.0]
  def change
    add_reference :jobs, :employer, foreign_key: true
  end
end
