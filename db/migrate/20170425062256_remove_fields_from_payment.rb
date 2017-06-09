class RemoveFieldsFromPayment < ActiveRecord::Migration[5.0]
  def change
    remove_column :payments, :recipient_bank, :string
    remove_column :payments, :redirecturl, :string
    remove_column :payments, :pin, :string
    remove_column :payments, :medium, :string
    remove_column :payments, :api_key, :string
  end
end
