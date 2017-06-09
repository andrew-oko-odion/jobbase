class ApplicationHistoryController < ApplicationController
  before_action :authenticate_jobseeker!
  layout 'jobsinternships_layout'
  def index
    @application_history = Application.where(jobseeker_id: current_jobseeker).order('id DESC').plant(params['page']).per(10)
  end
 
end
