class CreateSortOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :sort_orders do |t|
      t.string :clause
      
      t.timestamps
    end
  end
end
