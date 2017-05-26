class JobsController < ApplicationController
  layout 'jobsinternships_layout'
  def index
    @jobs = Job.where(job_type: 1, hide: false).order('id DESC').plant(params[:page]).per(4)
  end

  def show
     @job = Job.friendly.find(params[:id])
  end
end
