class Comment < ApplicationRecord
  belongs_to :question
  belongs_to :reply
  belongs_to :employer
  belongs_to :jobseeker
end
