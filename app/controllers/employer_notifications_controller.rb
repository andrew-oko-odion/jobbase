class EmployerNotificationsController < ApplicationController
  before_action :authenticate_employer!
  layout 'dashboard'
  
  def index
  end
end
