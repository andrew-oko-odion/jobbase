class CreateJobExperiences < ActiveRecord::Migration[5.1]
  def change
    create_table :job_experiences do |t|
      t.string :title
      t.boolean :hide, defalut: false
      
      t.timestamps
    end
    add_index :job_experiences, :title
  end
end




      
    
    
