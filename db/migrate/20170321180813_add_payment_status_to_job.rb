class AddPaymentStatusToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :payment_status, :boolean, default: false
  end
end
