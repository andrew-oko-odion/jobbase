class RemoveSalaryFromJob < ActiveRecord::Migration[5.1]
  def change
    remove_column :jobs, :salary
  end
end
