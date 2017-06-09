class WorkExperiencesController < ApplicationController
  before_action :authenticate_jobseeker!
  layout 'jobsinternships_layout'
  def index
    @workexperiences  = WorkExperience.all 
  end

  def show
    @workexperience = WorkExperience.find(params[:id])
  end

  def new
    @workexperience = WorkExperience.new
  end
  
  def create
    if @workexperience = WorkExperience.new(workexperience_params)
      @workexperience.save
      flash[:notice] = 'Work Experience Added Succesfully'
      redirect_to work_experiences_path
    else
      render 'new'
    end
  end
  
  def edit
    @workexperience = WorkExperience.find(params[:id])
  end

  def update
    @workexperience = WorkExperience.find(params[:id])
    if @workexperience.update_attributes(workexperience_params)
      flash[:notice] = 'Work Experience Updated Succesfully'
      #redirect_to @workexperience
      redirect_to work_experiences_path
    else
      render 'edit'
    end
  end
  

  def destroy
    @workexperience = WorkExperience.find(params[:id])
    @workexperience.destroy
    flash[:notice] = 'Work Experience Removed Successfully'
  end


  private
  def workexperience_params
    params.require(:work_experience).permit(:company_name, :job_title, :about_role, :company_website, :start_date, :end_date, :jobseeker_id)
  end
end
