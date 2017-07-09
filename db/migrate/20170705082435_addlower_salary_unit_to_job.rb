class AddlowerSalaryUnitToJob < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :lower_salary_unit, :decimal 
  end
end
