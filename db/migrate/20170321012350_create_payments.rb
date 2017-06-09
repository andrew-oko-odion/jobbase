class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.references :employer, foreign_key: true
      t.string :recipient_bank
      t.string :recipient_account_number
      t.string :card_no
      t.string :cvv
      t.string :pin
      t.string :expiry_year
      t.string :expiry_month
      t.string :api_key
      t.float :amount
      t.float :fee
      t.string :redirecturl
      t.string :medium

      t.timestamps
    end
  end
end
