class Education < ApplicationRecord
  belongs_to :education_type
  belongs_to :jobseeker
  validates :jobseeker_id, presence: true
end
