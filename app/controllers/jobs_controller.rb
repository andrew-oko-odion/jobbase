class JobsController < ApplicationController
  # before_action :require_login, only: [:create]
  layout 'jobsinternships_layout'
  respond_to :html, :json, :js
  
  def index
    @jobs = Job.where(hide: false).order('id DESC').plant(params[:page]).per(8)
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
          JobseekerMailer.welcome(current_jobseeker).deliver_now
          format.html do
            flash[:notice] =  'Application sent Successfully'
          end
        else
          format.html do
            flash[:notice] = 'You have already applied for this Job'
          end
        end
      else
        format.html do
          flash[:info] = 'Please Login to apply'
          redirect_to new_jobseeker_session_path
        end
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
