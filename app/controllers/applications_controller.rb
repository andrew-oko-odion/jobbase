
# Handle Applications for the jobseeker while it also handles Employers selection of candidate
class ApplicationsController < ApplicationController
  layout 'dashboard'
  def index
    # List of submited applications for a particular Job.
    @all = Application.where(:employer_id = current_employer.id)
  end

  def show
    # shows a Jobseekers profile I have not decided whether it should be a modal or not 
    # @profile = @application.find("where: Job.employer_id.jobseeker.id")
  end

  def new
    #@applications = Application.new
  end

  def create
    if @applications = Application.new(applications_params) &&  current_jobseeker 
      @applications.save
      flash[:notice] = 'Application sent Successfully'
      redirect_to welcome_index_path
    else
      flash[:notice] = 'Please Login'
      redirect_to new_jobseeker_session_path 
    end
   # render plain: params[:applications].inspect
  end

  private 
  def applications_params
    params.require(:applications).permit(:jobseeker_id, :job_id)
  end

  def job_params
    params.require(:job).permit(:title, :job_type_id, :job_category_id, :description, :application_email, :location, :company_name, :closing_date, :salary, :employer_id)
  end
end
