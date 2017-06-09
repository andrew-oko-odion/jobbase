class AddHideToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :hide, :boolean, default: false
  end
end
