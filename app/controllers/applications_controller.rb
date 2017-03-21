# Handle Applications for the jobseeker while it also handles Employers selection of candidate
class ApplicationsController < ApplicationController
  layout 'dashboard'
  def index
    @jobs = Job.where(:employer_id == current_employer.id)
    @profiles = Application.where(job_id: 17).paginate(:page => params[:page], :per_page => 6)
  end

  def show
    @profile = Application.where(:job_id => params[:job], :jobseeker_id => params[:candidate]).first
  end

  def new
    @job = Job.new
  end
  
  def create
    @job = Job.new(job_params)
    if @job.save
      flash[:notice] = "Job Posted Successfully"
      redirect_to @job
    else
      flash[:notice] = "Job Post not Successfull"
    end
  end

  private 
  def job_params
    params.require(:job).permit(:title, :job_type_id, :job_category_id, :description, :application_email, :location, :company_name, :closing_date, :salary, :employer_id)
  end
end
