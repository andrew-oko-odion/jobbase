class Question < ApplicationRecord
  acts_as_taggable
  belongs_to :jobseeker
  has_many :reply
  has_many :comment  
end
