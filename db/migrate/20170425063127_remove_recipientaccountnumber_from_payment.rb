class RemoveRecipientaccountnumberFromPayment < ActiveRecord::Migration[5.0]
  def change
    remove_column :payments, :recipient_account_number, :string
  end
end
