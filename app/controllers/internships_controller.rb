class InternshipsController < ApplicationController
  layout 'jobsinternships_layout'
  def index
     @internships = Job.where(job_type: 2, hide: false).order('id DESC').plant(params[:page]).per(8)
  end

  def show
     @job = Job.friendly.find(params[:id])
  end
end
