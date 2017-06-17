class CreateReplies < ActiveRecord::Migration[5.0]
  def change
    create_table :replies do |t|
      t.text :body
      t.references :employer, foreign_key: true
      t.references :jobseeker, foreign_key: true
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
