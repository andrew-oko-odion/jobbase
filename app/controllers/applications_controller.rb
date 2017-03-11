
class ApplicationsController < ApplicationController
  def index
  end

  def show
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
  
end
