class Jobseeker < ApplicationRecord
  validates :fullname, :password, :email, presence: true
 # include 'Gravtastic'
  #  gravtastic
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable # :confirmable

  has_many :education
  has_many :work_experience
  has_many :associate
  has_many :application
  has_many :about
end
