class CreateEmailDefaults < ActiveRecord::Migration[5.1]
  def change
    create_table :email_defaults do |t|
      t.text :body
      t.string :title

      t.timestamps
    end
  end
end
