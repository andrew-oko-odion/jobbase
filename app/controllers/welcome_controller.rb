
class WelcomeController < ApplicationController
  layout 'welcome_layout'
  attr_accessor :jobs_cart
  
  def index
    #@jobs = Job.all
    @jobs = Job.paginate(:page => params[:page], :per_page => 6)
  end

  def show
    @job = Job.find(params[:id])
    @applications = Application.new
  end
  
  def new
     @job = Job.new
  end
  
 # def create  
    #@jobs_cart.push(job_params)
    # self.jobs_cart = []
    # self.jobs_cart.push(job_params)
    #if @jobs_cart.length > 1
    #if cool[:cart_items].nil?
    # cool[:cart_items] = []
    #else
    # cool[:cart_items].push('hello')
    #  puts cool[:cart_items]
    #end
    #flash[:notice] = @jobs_cart
    #end
    #else
    #  render 'new'
    #end  
 # end

  def create
    if employer_signed_in?
      #@job = Job.new(job_params)
      #@job.save

      
      session[:form] << job_params
      # redirect_to @job
      #flash[:notice] = "Job posted successfully"
      # render plain: @job.inspect
      render plain: session[:form]
   # else
      #flash[:notice] = "Please Sign in to post a Job"
      #redirect_to new_employer_session_path
    end
    
    #respond_to do |f|  
    #  f.html { redirect_to dashboard_index_url }
    #  f.js 
    #end
  end
  
  def set_cart_to_array
    cool[:cart_items] = []
  end

  
# def create
    # if jobseeker_sign_in?
      # @job = Job.find(params[:id])
    #@jobseeker = current_jobseeker;
    
      #@apply = Application.create ({ jobseeker_id: @jobseeker.id, job_id: @job })
      #flash[:notice] = "Application Submited"
      #redirect_to root_path
    # else
    #  flash[:notice] = "Please Sign_in to apply for the Job"
    #  redirect_to root_path + 'jobseeker/sign_in'
    # end
  #  end
  
  
  private
  def job_params
    params.require(:job).permit(:title, :job_type_id, :job_category_id, :description, :application_email, :location, :company_name, :closing_date, :salary, :employer_id)
  end
  
end
