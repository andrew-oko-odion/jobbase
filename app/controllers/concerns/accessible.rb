module Accessible extend ActiveSupport::Concern
  
  protected
  def check_user
    flash.clear
    if current_employer
      redirect_to(dashboard_index_path) && return
    elsif current_jobseeker
      redirect_to(root_path) && return
    end
  end
end
