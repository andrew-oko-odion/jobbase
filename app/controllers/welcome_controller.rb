class  WelcomeController < ApplicationController
# load_and_authorize_resource :only => [:index, :show] 
  layout 'welcome_layout'
  #check_authorization
  #load_and_authorize_resource 
  
  def autocomplete
    render json: Job.search(params[:query], autocomplete: true, limit: 10).map  do |j|
      { title: j.title, value: j.id }
    end
  end
  
  def index
    if params[:query].present?
      @jobs = Job.search(params[:query], page: params[:page]) #where(job_type: 1, hide: false).paginate(:page => params[:page], :per_page => 6)
    end
  end

  def show
    @job = Job.find(params[:id])
    @apply = Application.new
  end
  

  def create
    @apply = Application.new(applications_params)    
    respond_to do |format|
      if jobseeker_signed_in? 
        if @apply.save
          format.html { redirect_to welcome_index_path, notice: 'Application sent Successfully.' }
          format.js
        end
      else
        format.html { redirect_to new_jobseeker_session_path, error: 'Please Login to apply' }
      end
    end
  end
  
  private
  def job_params
    params.require(:job).permit(:title, :job_type_id, :job_category_id, :description, :application_email, :location, :company_name, :closing_date, :salary, :employer_id)
  end

  def applications_params
    params.require(:apply).permit(:jobseeker_id, :job_id, :employer_id, :sort_order_id)
  end
  
end
