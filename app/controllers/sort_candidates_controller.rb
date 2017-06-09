class SortCandidatesController < ApplicationController
  # before_action :authenticate_employer!
  def update
    render plain: sort_params.inspect
    @candidate = Application.where({job_id: params[:job_id], jobseeker_id: params[:jobseeker_id]}).first
    @candidate.update_attributes(sort_params)
    #redirect_to applications_path
    #flash[:info] = "Success added"
  end
  
  private
  def sort_params
    params.require(@candidate).permit(:sort_order) 
  end
end
