
class Job < ApplicationRecord
  extend FriendlyId
  searchkick word_start: [:title]
  friendly_id :slug_jobs, use: :slugged

  belongs_to :job_type
  belongs_to :job_category
  belongs_to :employer
  has_many :application
  has_many :payment

  def next(job)
    Job.where(job_type: 1, hide: false).where('id < ?', job.id).last
  end

  def prev(job)
    Job.where(job_type: 1, hide: false).where('id > ?', job.id).first
  end

  
  def slug_jobs
    [
      :title,
      [:title, :id]
    ]
  end

end
