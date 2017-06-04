
class ApplicationController < ActionController::Base
  include ApplicationHelper
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  # after_action :store_location
  
  # saves the location before loading each page so we can return to the
  # right page. If we're on a devise page, we don't want to store that as the
  # place to return to (for example, we don't want to return to the sign in page
  # after signing in), which is what the :unless prevents
  # before_action :store_current_location, :unless => :devise_controller?

  def current_ability
    if jobseeker_signed_in? 
      @current_ability ||= JobseekerAbility.new(current_jobseeker)
    else
      @current_ability ||= EmployerAbility.new(current_employer)
    end
  end

  
  def after_sign_in_path_for(resource)
    resource.is_a?(Employer) ? applications_path  : session[:previous_url]
    resource.is_a?(Jobseeker) ? jobs_path  : session[:previous_url] 
  end

  # def store_location
  #   # store last url - this is needed for post-login redirect to whatever the user last visited.
  #   return unless request.get? 
  #   if (request.path != "/jobseekers/sign_in" &&
  #       request.path != "/jobseekers/sign_up" &&
  #       request.path != "/jobseekers/password/new" &&
  #       request.path != "/jobseekers/password/edit" &&
  #       request.path != "/jobseekers/confirmation" &&
  #       request.path != "/jobseekers/sign_out" &&
  #       !request.xhr?) # don't store ajax calls
  #     session[:previous_url] = request.fullpath 
  #   end
  # end

  private  
    def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :jobseeker
      jobs_path
    elsif resource_or_scope == :employer
      dashboard_index_path
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
