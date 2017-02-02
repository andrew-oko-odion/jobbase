class Application < ApplicationRecord
  belongs_to :job
  belongs_to :jobseeker
end
