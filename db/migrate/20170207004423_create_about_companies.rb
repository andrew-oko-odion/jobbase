class CreateAboutCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :about_companies do |t|
      t.string :name
      t.string :location
      t.string :website
      t.string :enquiry_email
      t.text :about

      t.timestamps
    end
  end
end
