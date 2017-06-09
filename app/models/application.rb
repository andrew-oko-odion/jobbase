class Application < ApplicationRecord
  validates :id, uniqueness: { scope: [:job_id, :jobseeker_id], message: "you already applied for this job" }, on: :create
  searchkick #word_start: [:title]
  
  belongs_to :jobseeker
  belongs_to :job
  belongs_to :sort_order
  belongs_to :employer

  # def search_data
  #   {
  #     title: jobseeker.fullname,
  #   }
  # end
end
