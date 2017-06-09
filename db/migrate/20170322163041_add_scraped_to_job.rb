class AddScrapedToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :scraped, :boolean, default: false 
  end
end
