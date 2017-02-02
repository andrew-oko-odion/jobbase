class CreateJobTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :job_types do |t|
      t.string :title
      t.boolean :active, default: true
      t.jobs :belongs_to

      t.timestamps
    end
  end
end
