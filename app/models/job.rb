
class Job < ApplicationRecord
  extend FriendlyId
  searchkick word_start: [:title]
  friendly_id :slug_jobs, use: :slugged

  acts_as_taggable_on :tags  
  belongs_to :job_type 
  belongs_to :job_category
  belongs_to :employer
  has_many :application
  has_many :payment
  belongs_to :job_experience
  
  def next(job)
    Job.where(hide: false).where('id < ?', job.id).last
  end

  def prev(job)
    Job.where(hide: false).where('id > ?', job.id).first
  end

  
  def slug_jobs
    [
      :title,
      [:title, :id]
    ]
  end

end
