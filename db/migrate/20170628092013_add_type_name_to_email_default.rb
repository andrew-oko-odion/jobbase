class AddTypeNameToEmailDefault < ActiveRecord::Migration[5.1]
  def change
    add_column :email_defaults, :typename, :boolean, default: false
  end
end
