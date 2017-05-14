class InternshipsController < ApplicationController
  def index
     @internships = Job.where(job_type: 2, hide: false).order('id DESC').page params[:page]
  end

  def show
     @job = Job.find(params[:id])
  end
end
