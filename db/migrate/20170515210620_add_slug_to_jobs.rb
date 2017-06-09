class AddSlugToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :slug, :string
    add_index :jobs, :slug
  end
end
