module ApplicationHelper
  def current_auth_resource
    if employer_signed_in?
      current_employer
    else
      current_jobseeker
    end
  end

  def current_ability
    @current_ability or @current_ability = Ability.new(current_auth_resource)
  end
end
