class CreateJobTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :job_types do |t|
      t.string :title
      t.boolean :hide, null: false, :defalut => 0

      t.timestamps
    end
    add_index :job_types, :title
  end
end
