class ApplicationsController < ApplicationController
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
  end

  def update
    @candidate_application = Application.find(params[:id])
    @candidate_application.update_attributes(sort_params)
    respond_to do |f|
      f.js 
    end
  end

 
  def create
    @job = Job.new(job_params)
    if @job.save
      flash[:notice] = "Job Added to Cart"
      session[:job_id] = @job.id
      redirect_to new_payment_path
    else
      flash[:alert] = "Job Post not Successfull"
      render :new
    end
  end

  def job_params
    params.require(:job).permit(:title, :job_type_id, :job_category_id, :description, :application_email, :location, :company_name, :closing_date, :salary, :employer_id, :card_no, :cvv, :expiry_year, :expiry_month, :amount, :firstname, :lastname, :phonenumber, :email, :recipient_bank, :recipent_account_number,  :apiKey, :redirecturl, :medium, :authoriztion, :tags)
  end

  def sort_params
    params.require(:application).permit(:sort_order_id)
  end

end
