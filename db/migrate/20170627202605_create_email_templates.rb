class CreateEmailTemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :email_templates do |t|
      t.text :body
      t.references :employer, foreign_key: true

      t.timestamps
    end
  end
end
