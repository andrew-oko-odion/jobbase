class JobcartsController < ApplicationController

  require 'rest-client'

  def index
    @cart = current_employer.job.where(payment_status: :false)
  end

  def show
    @item = current_employer.job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def edit
     @job = Job.find(params[:id])
  end

  def create    
    @job = Job.create!(job_params)
    redirect_to jobcarts_url
    
    respond_to do |f|
      f.html { redirect_to jobcarts_url}
      f.js 
    end
  end

  def update
    @job = Job.find(params[:id])
    @job.update_attributes!(job_params)
    
    respond_to do |f|
      f.html { redirect_to jobcart_url }
      f.js 
    end
  end

  def destroy
    @job = Job.destroy(params[:id])

    respond_to do |f|
      f.html { redirect_to jobcart_url }
      f.js 
    end
  end

  private
  def job_params
    params.require(:job).permit(:title, :job_type_id, :job_category_id, :description, :application_email, :location, :company_name, :closing_date, :salary, :employer_id)
  end
  
  
end
