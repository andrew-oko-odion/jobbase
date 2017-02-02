class Job < ApplicationRecord
  belongs_to :employers
  belongs_to :job_categories
  belongs_to :job_types
end
