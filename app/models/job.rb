
class Job < ApplicationRecord
  extend FriendlyId  
  friendly_id :slug_jobs, use: :slugged
  searchkick word_start:  [:title]
  belongs_to :job_type
  belongs_to :job_category
  belongs_to :employer
  has_many :application
  has_many :payment

 # scope :next, lambda {|id| where("id > ?",id).order("id ASC") }
 # scope :previous, lambda {|id| where("id < ?",id).order("id DESC") }

  # scope :next, -> { where(job_type: 1, hide: false).where("id > ?", id).order("id ASC") }
  
  # def next
  #   # Job.where(job_type: 1, hide: false).where("id > ?", id).order("id DESC").first || Job.first
  #   Job.where(job_type: 1, hide: false).where("id > ?", id).order("id ASC").first
  # end

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
