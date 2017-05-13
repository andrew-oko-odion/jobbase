class Job < ApplicationRecord
  include Active
  #  scope :active_jobs, -> { where(active: :false) }
  paginates_per 10
  searchkick word_start:  [:title]
  belongs_to :job_type
  belongs_to :job_category
  belongs_to :employer
  has_many :application
  has_many :payment
  #belongs_to :application
end
