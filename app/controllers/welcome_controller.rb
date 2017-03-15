
class WelcomeController < ApplicationController
  layout 'welcome_layout'
  attr_accessor :jobs_cart
  
  def index
    @jobs = Job.paginate(:page => params[:page], :per_page => 6)
  end

  def show
    @job = Job.find(params[:id])
    @apply = Application.new
  end
  
  def new
     @job = Job.new
  end

  def create 
     @apply = Application.new(applications_params) #&& current_jobseeker 
     if @apply.save
      flash[:notice] = 'Application sent Successfully'
      redirect_to welcome_index_path
    else
      flash[:notice] = 'Please Login'
      redirect_to new_jobseeker_session_path 
    end
    #render plain: @apply.inspect
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
