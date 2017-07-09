class ApplicationHistoryController < ApplicationController
  before_action :authenticate_jobseeker!
  # layout 'jobsinternships_layout'
  layout 'jobseeker_layout_internal'
  def index
    @application_history = Application.where(jobseeker_id: current_jobseeker).order('id DESC').plant(params['page']).per(10)
    # render layout: "dashboard"
  end

   def autocomplete
    @job_search = Job.search(params[:query], limit: 10)
  end
 
end
