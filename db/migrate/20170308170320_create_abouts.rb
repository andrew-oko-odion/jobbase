class CreateAbouts < ActiveRecord::Migration[5.0]
  def change
    create_table :abouts do |t|
      t.text :about
      t.references :jobseeker, foreign_key: true

      t.timestamps
    end
  end
end
