class AddPaymentReferenceToJob < ActiveRecord::Migration[5.0]
  def change
    add_reference :jobs, :payment, foreign_key: true
  end
end
