class AddActiveJobDefaultToJob < ActiveRecord::Migration[5.0]
  def change
    change_column :jobs, :active, :boolean, default: false
  end
end
