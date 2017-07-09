class ApplicationsController < ApplicationController
  respond_to :html, :js, :json
  before_action :authenticate_employer!
  layout 'dashboard'
  
  def index
    @total_jobs = Job.where(employer_id: current_employer.id, active: :true)
    @applications_sort = Application.where(job_id: params[:id], sort_order_id: params[:sort_order_id])
    @candidates = Application.where(job_id: params[:job_id], employer_id: current_employer.id).order('id DESC').plant(params[:page]).per(3)
    @accepted = Application.where(job_id: params[:job_id], employer_id: current_employer.id, sort_order_id: 2).order('id DESC').plant(params[:page]).per(3)
    @interview = Application.where(job_id: params[:job_id], employer_id: current_employer.id, sort_order_id: 3).order('id DESC').plant(params[:page]).per(3)
    @rejected = Application.where(job_id: params[:job_id], employer_id: current_employer.id, sort_order_id: 1).order('id DESC').plant(params[:page]).per(3)
  end
  
  def show
    # @profile = Application.where({job_id: params[:job_id], jobseeker_id: params[:jobseeker_id]}).first
    @profile = Application.find(params[:id])
    @candidate_application = Application.find(params[:id])
  end

  def search
    @search_jobseeker = Application.search(params[:query]) #where: {limit: 6, employer_id: current_employer.id} )
  end

  def new
    @job = Job.new
    @job_type = JobType.where(hide: false).order(id: 'ASC')
    @job_category = JobCategory.where(hide: false)
    @job_experience = JobExperience.where(hide: false)
  end

  def create
    @job = Job.new(job_params)
    if @job.save!
      redirect_to jobcarts_path, notice: "Job Added to Cart"
      session[:job_id] = @job.id
    else
      flash[:alert] = "Job Post not Successfull"
      render :new
    end
  end

    
  def update
    @candidate_application = Application.find(params[:id])
    @candidate_application.update_attributes(sort_params)
  end
 

  private
  def job_params
    params.require(:job).permit(:title, :job_type_id, :job_category_id, :company_name, :location, :description, :job_experience_id, :salary, :tag_list, :tags, :employer_id, :higher_salary_unit, :lower_salary_unit )
  end

  def sort_params
    params.require(:application).permit(:sort_order_id)
  end

end
