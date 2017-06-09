class AddJobReferenceToPayment < ActiveRecord::Migration[5.0]
  def change
    add_reference :payments, :job, foreign_key: true
  end
end
