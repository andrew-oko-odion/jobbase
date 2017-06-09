class JobsController < ApplicationController
  # before_action :require_login, only: [:create]
  layout 'jobsinternships_layout'
  def index
    @jobs = Job.where(job_type: 1, hide: false).order('id DESC').plant(params[:page]).per(4)
  end

  def show
    @job = Job.friendly.find(params[:id])
    @apply = Application.new
  end  

  def create
    @apply = Application.new(applications_params)
    respond_to do |format|
      if jobseeker_signed_in? 
        if @apply.save
          format.html { redirect_to jobs_path, notice: 'Application sent Successfully' }
          format.js
        else
          format.html { flash[:notice] = "You have alredy applied" }
          end
      else
        format.html { redirect_to new_jobseeker_session_path, error: 'Please Login to apply' }
      end
    end
  end

  def autocomplete
    @job_search = Job.search(params[:query], limit: 10)
  end
  
  private
  def applications_params
    params.require(:apply).permit(:jobseeker_id, :job_id, :employer_id, :sort_order_id)
  end

end
