class EmailSettingsController < ApplicationController
  before_action :authenticate_employer!
  layout 'dashboard'
  
  def index
    @all_positive_emails = !(EmailTemplate.where(emailtype: true, active: true)).empty? ?
                             EmailTemplate.where(emailtype: true, active: true) :
                             EmailDefault.where(typename: true)  
    
    @all_negetive_emails = !(EmailTemplate.where(emailtype: false, active: true)).empty? ?
                             EmailTemplate.where(emailtype: false, active: true) :
                             EmailDefault.where(typename: false)
  end

  def show
  end

  # def new
  #   @email_settings = EmailTemplate.new
  #   @email = EmailDefault.find 1
  # end

  def create
    @email_settings = EmailTemplate.new(email_settings_params)
    if @email_settings.save
      redirect_to email_settings_path
      flash[:notice] = "Email saved successfully"
    else
      flash[:error] = "Unable to save at this time"
      render :new
    end
  end

  # def update
  #   @email = EmailDefault.find params[:id]
  #   @email_settings = EmailTemplate.new(email_settings_params)
  #   if @email_settings.save
  #     redirect_to email_settings_path
  #     flash[:notice] = "Email saved successfully"
  #   else
  #     flash[:error] = "Unable to save at this time"
  #     render :new
  #   end
  # end
  
  def edit
    @email = EmailTemplate.find(params[:id]) ||  EmailDefault.find(params[:id])
    @email_settings = EmailTemplate.new
  end

  protected
  def email_settings_params
    params.require(:email_settings).permit(:body, :active, :title)
  end
end
