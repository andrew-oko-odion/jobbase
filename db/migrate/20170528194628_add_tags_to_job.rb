class AddTagsToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :tags, :text
  end
end
