class JobcartsController < ApplicationController
  layout 'dashboard'
  require 'rest-client'
  respond_to :js, :json, :html
  
  def index
    @cart = current_employer.job.where(payment_status: :false).order(id: 'DESC').plant(params[:page]).per(8)
  end

  def show
    @item = current_employer.job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def edit
     @job = current_employer.job.where(params[:id])
  end

  def create    
    @job = Job.create!(job_params)
    redirect_to jobcarts_url, notice: 'Make Card Payment'
  end

  def update
    @job = Job.find(params[:id])
    @job.update_attributes!(job_params)
    redirect_to jobcart_url notice: 'Changes Updated Successfully'
  end

  def destroy
    @job = Job.find(params[:id])
    if @job.destroy
      redirect_to jobcart_url, notice: 'Deleted Successfully'
    end
  end

  private
  def job_params
    params.require(:job).permit(:title, :job_type_id, :job_category_id, :description, :application_email, :location, :company_name, :closing_date, :salary, :employer_id, :tag_list )
  end
  
  
end
