class AddHigherSalaryUnitToJob < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :higher_salary_unit, :decimal
  end
end
