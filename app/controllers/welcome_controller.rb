
class  WelcomeController < ApplicationController
  layout 'welcome_layout'
  attr_accessor :jobs_cart
  
  def index
    # lookup the list for Job_type ...
    # table job_type id of 1 is for `open jobs`
    # while Table job_type of id 2 is for `paid internships`
    @jobs = Job.where(job_type: 1, hide: false).paginate(:page => params[:page], :per_page => 6)
    @internships = Job.where(job_type: 2, hide: false).paginate(:page => params[:page], :per_page => 6)
  end

  def internship
    @internships = Job.where(job_type: 2, hide: false).paginate(:page => params[:page], :per_page => 6)
  end
  
  def show
    # `show` would work for both internships and Jobs because it is finding by Id. 
    @job = Job.find(params[:id])
    @apply = Application.new
  end
  
  def new
     @job = Job.new
  end

  def create
    if jobseeker_signed_in? 
      @apply = Application.new(applications_params) #&& current_jobseeker 
      if @apply.save
        flash[:notice] = 'Application sent Successfully'
        redirect_to welcome_index_path
      end
    else
      #render plain: session[:applying]
      flash[:error] = 'Please Login to apply'
      redirect_to new_jobseeker_session_path 
    end
  end

  
  def set_cart_to_array
    cool[:cart_items] = []
  end 
  
  private
  def job_params
    params.require(:job).permit(:title, :job_type_id, :job_category_id, :description, :application_email, :location, :company_name, :closing_date, :salary, :employer_id)
  end

  def applications_params
    params.require(:apply).permit(:jobseeker_id, :job_id)
  end
  
end
