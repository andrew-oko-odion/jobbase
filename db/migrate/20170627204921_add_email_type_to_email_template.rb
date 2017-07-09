class AddEmailTypeToEmailTemplate < ActiveRecord::Migration[5.1]
  def change
    add_column :email_templates, :emailtype, :boolean, default: false
  end
end
