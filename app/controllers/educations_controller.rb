class EducationsController < ApplicationController
  
  def index
    @educations  = Education.where(jobseeker_id: current_jobseeker.id)
  end

  def show
    @education = Education.find(params[:id])
  end

  def new
    @education = Education.new
  end

  def create
   if  @education = Education.new(education_params)
     @education.save
     flash[:notice] = 'Added Successfully'
     redirect_to @education
   else
     render 'new'
   end
  end
  
  def edit
    @education = Education.find(params[:id])
  end

  def update
   # @education = Education.find(params[:id])
    if @education.update_attributes(education_params)
       flash[:notice] = 'Updated Successfully'
      redirect_to @education
    else
      render 'edit'
    end
  end

  def destroy
    @education = Education.find(params[:id])
    @education.destroy
     flash[:notice] = 'Deleted Successfully'
    redirect_to educations_path
  end

  private
  def education_params
    params.require(:education).permit(:certificate_title, :school_name, :school_website, :start_date, :end_date, :education_type_id, :jobseeker_id)
  end
  
end
