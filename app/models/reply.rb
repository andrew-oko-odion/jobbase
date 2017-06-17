class Reply < ApplicationRecord
  belongs_to :employer
  belongs_to :jobseeker
  belongs_to :question
end
