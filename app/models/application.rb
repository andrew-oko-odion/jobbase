class Application < ApplicationRecord
  belongs_to :jobseeker
  belongs_to :job

  #scope :profile -> { where () }
end
