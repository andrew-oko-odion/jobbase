class EducationsController < ApplicationController
  skip_before_action :verify_authenticity_token, if: Proc.new {|c| c.request.format.json? }
  before_action :authenticate_jobseeker!
  # layout 'jobsinternships_layout'
  layout 'jobseeker_layout_internal'
  
  def index
    @educations  = Education.where(jobseeker_id: current_jobseeker.id)
    respond_to do |format|
      format.html
      format.json {render json: @educations, status: :ok }
    end
  end

  def show
    @education = Education.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @education, status: :ok, location: @education }
    end
  end

  def new
    @education_type = EducationType.all
    @education = Education.new
  end

  def create
    respond_to do |format|
      if @education = Education.new(education_params)
        @education.save
        format.html { redirect_to @education, notice: 'Added Successfully' }
        format.json { render json: @education, status: :ok, location: @education }
      else
        format.html { render action: 'new' }
        format.json { render json: @education.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def edit
    @education_type = EducationType.all
    @education = Education.find(params[:id])
  end

  def update
    respond_to do |format|
      if @education.update_attributes(education_params)
        format.html {redirect_to @education, notice: 'Updated Successfully.' }
        format.js
        format.json { render json: @education, status: :ok, location: @education}
      else
        format.html {render action: 'edit'}
        format.json {render json: @education.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @education = Education.find(params[:id])
    respond_to do |format|
      if @education.destroy 
        format.html { redirect_to educations_path, notice: 'Deleted Successfully'}
        format.json { render json: "Deleted Successfully", status: :ok }
      else
        format.html { redirect_to educations_path, notice: "Error Unable to Delete" }
        format.json {render json: @education.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def education_params
    params.require(:education).permit(:certificate_title, :school_name, :school_website, :start_date, :end_date, :education_type_id, :jobseeker_id)
  end
  
end
