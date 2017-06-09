class AddPersonalDataToEmployer < ActiveRecord::Migration[5.0]
  def change
    add_column :employers, :firstname, :string
    add_column :employers, :lastname, :string
    add_column :employers, :phonenumber, :string
  end
end
