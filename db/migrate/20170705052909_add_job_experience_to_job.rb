class AddJobExperienceToJob < ActiveRecord::Migration[5.1]
  def change
    add_reference :jobs, :job_experience, foreign_key: true
  end
end
