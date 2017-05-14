class JobsController < ApplicationController
  def index
    @jobs = Job.where(job_type: 1, hide: false).order('id DESC').page params[:page]
  end

  def show
     @job = Job.find(params[:id])
  end
end
