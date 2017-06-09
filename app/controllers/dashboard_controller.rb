class DashboardController < ApplicationController
  before_action :authenticate_employer!, :except => :welcome
  
  layout 'dashboard'
  
  def index
    # @count = total_applications
    # @count = Applications.where(employer_id: 1)
  end

  def welcome
  end

  def total_applications
   # @application_count = Applications.where(employer_id: current_employer.id).count
  end
  
end
