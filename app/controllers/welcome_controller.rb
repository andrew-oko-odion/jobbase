class WelcomeController < ApplicationController
  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end
  
 
  def apply
    if jobseeker_sign_in?
      @job = Job.find(params[:id])
      @jobseeker = current_jobseeker; 
      @apply = Application.create ({ jobseeker_id: @jobseeker.id, job_id: @job })
    else
      flash[:notice] = "Please Sign_in to apply for the Job"
      redirect_to root_path + 'jobseeker/sign_in'
    end
  end

end
