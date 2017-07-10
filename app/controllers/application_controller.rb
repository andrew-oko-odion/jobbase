class ApplicationController < ActionController::Base
  require 'active_resource/railtie'
  include ApplicationHelper
  # protect_from_forgery with: :exception
  protect_from_forgery with: :null_session, if: Proc.new {|c| c.request.format.json? }
  before_action :configure_permitted_parameters, if: :devise_controller?
  layout :layout_by_resource
  before_action :recent_application
  before_action :cart_count
  
  def recent_application
    if jobseeker_signed_in?
      @recent_application = Application.where(jobseeker_id: current_jobseeker).order('id DESC').limit(4)
    end
  end

  def cart_count
    @cart_items = current_employer.job.where(payment_status: :false)
  end
    
  def current_ability
    if jobseeker_signed_in? 
      @current_ability ||= JobseekerAbility.new(current_jobseeker)
    else
      @current_ability ||= EmployerAbility.new(current_employer)
    end
  end

  def after_sign_in_path_for(resource)
    stored_location_for(resource) ||
      if resource.is_a?(Employer)
        dashboard_index_path
      elsif resource.is_a?(Jobseeker)
        jobs_path
      else
        super
      end
  end
  
  private
   def layout_by_resource
     if devise_controller? && resource_name == :employer
       "dashboard"
     end
  end
  
  def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :jobseeker
      jobs_path
    elsif resource_or_scope == :employer
      dashboard_welcome_path
    else
      root_path
    end
  end
  
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:fullname, :email, :password,  :is_female, :date_of_birth])
    devise_parameter_sanitizer.permit(:account_update, keys: [:fullname, :email, :password, :current_password, :is_female, :date_of_birth])
  end
  
end
