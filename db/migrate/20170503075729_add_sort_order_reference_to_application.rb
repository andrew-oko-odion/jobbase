class AddSortOrderReferenceToApplication < ActiveRecord::Migration[5.0]
  def change
    add_reference :applications, :sort_order, foreign_key: true
  end
end
