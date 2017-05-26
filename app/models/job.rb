class Job < ApplicationRecord
  include Active
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged
  #  scope :active_jobs, -> { where(active: :false) }
  searchkick word_start:  [:title]
  belongs_to :job_type
  belongs_to :job_category
  belongs_to :employer
  has_many :application
  has_many :payment
  #belongs_to :application
  # paginates_per  8

  def slug_candidates
    [
      :title,
      [:title, :id]
    ]
  end

end
