class AddTitleToEmailTemplate < ActiveRecord::Migration[5.1]
  def change
    add_column :email_templates, :title, :string
  end
end
