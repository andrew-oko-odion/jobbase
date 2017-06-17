class Employer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

 # include "Gravtastic"
 # gravtastic
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :job
  has_many :application
  #has_many :reply
  has_many :question
  # has_many :payments

  
end


