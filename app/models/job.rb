class Job < ApplicationRecord
  belongs_to :job_type
  belongs_to :job_category
  belongs_to :employer
  has_many :application
end
