class CreateJobCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :job_categories do |t|
      t.string :title
      t.boolean :hide, defalut: false

      t.timestamps
    end
    add_index :job_categories, :title
  end
end
