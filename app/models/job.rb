class Job < ApplicationRecord
  belongs_to :job_type
  belongs_to :job_category
end
