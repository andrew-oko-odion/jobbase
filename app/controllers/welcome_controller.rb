class  WelcomeController < ApplicationController
# load_and_authorize_resource :only => [:index, :show] 
  layout 'welcome_layout'
  attr_accessor :jobs_cart
  #check_authorization
  #load_and_authorize_resource 
  
  def autocomplete
    render json: Job.search(params[:query], autocomplete: true, limit: 10).map  do |j|
      { title: j.title, value: j.id }
    end
  end
  
  def index
    if params[:query].present?
      @jobs = Job.search(params[:query], page: params[:page]) #where(job_type: 1, hide: false).paginate(:page => params[:page], :per_page => 6)
    else
      # @books = Book.all.page params[:page]
      # @jobs = Job.where(job_type: 1, hide: false).paginate(:page => params[:page], :per_page => 6)
      # @internships = Job.where(job_type: 2, hide: false).paginate(:page => params[:page], :per_page => 6)
      @jobs = Job.where(job_type: 1, hide: false).order('id DESC').page params[:page]
      @internships = Job.where(job_type: 2, hide: false).order('id DESC').page params[:page]
    end
    
    # lookup the list for Job_type ...
    # table job_type id of 1 is for `open jobs`
    # while Table job_type of id 2 is for `paid internships`
    # @jobs = Job.where(job_type: 1, hide: false).paginate(:page => params[:page], :per_page => 6)
    # @internships = Job.where(job_type: 2, hide: false).paginate(:page => params[:page], :per_page => 6)
    # authorize! :read, @jobs
  end

  def internship
    @internships = Job.where(job_type: 2, hide: false).paginate(:page => params[:page], :per_page => 6)
  end
  
  def show
    # `show` would work for both internships and Jobs because it is finding by Id. 
    @job = Job.find(params[:id])
    @apply = Application.new
  end
  
  def new
     @job = Job.new
  end

  def create
    @apply = Application.new(applications_params)
    
    respond_to do |format|
      if jobseeker_signed_in? 
        if @apply.save
          format.html { redirect_to welcome_index_path, notice: 'Application sent Successfully.' }
          format.js
          # format.json { render json: @user, status: :created, location: @user }
        end
      else
        format.html { redirect_to new_jobseeker_session_path, error: 'Please Login to apply' }
        # format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  
  #   if jobseeker_signed_in? 
  #     @apply = Application.new(applications_params) 
  #     if @apply.save
  #       flash[:notice] = 'Application sent Successfully'
  #       redirect_to welcome_index_path
  #     end
  #   else
  #     #render plain: session[:applying]
  #     flash[:error] = 'Please Login to apply'
  #     redirect_to new_jobseeker_session_path 
  #   end
  # end

  
  private
  def job_params
    params.require(:job).permit(:title, :job_type_id, :job_category_id, :description, :application_email, :location, :company_name, :closing_date, :salary, :employer_id)
  end

  def applications_params
    params.require(:apply).permit(:jobseeker_id, :job_id, :employer_id, :sort_order_id)
  end
  
end
