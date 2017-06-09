class AddJobReferenceToEmployer < ActiveRecord::Migration[5.0]
  def change
     add_reference :employers, :job, foreign_key: true
  end
end
