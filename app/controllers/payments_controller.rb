
class PaymentsController < ApplicationController
  before_action :authenticate_employer!
  layout 'dashboard'
  require 'rest-client'
  require 'json'
  
  def index
    # payment History and Refunds 
  end
  
  def show
    # List Item bought and Amount too
  end

  def new
    # Payment form
    @pay = Payment.new
  end

  def create
    temp = {"firstname" => current_employer.firstname, "lastname" => current_employer.lastname, "phonenumber" => current_employer.phonenumber, "email" => current_employer.email, "medium" => "web", "redirecturl" => "http://localhost:3000/dashboard", "recipient_bank" => "044", "recipient_account_number" => "0690000005", "apiKey" => "ts_RRYDR8NHODV35DPXOG56", "amount" => 5000.0, "fee" => 0.0 }
    

    payment_para = temp.merge(payment_params)
    #return render plain: payment_para.to_json
    payment = payment_params.merge({employer_id: current_employer.id, job_id: session[:job_id]})
   responds = RestClient.post('https://moneywave.herokuapp.com/v1/transfer', payment_para.to_json, {content_type: 'application/json', authorization: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NTMzLCJuYW1lIjoiRWx4dGhlYW0iLCJhY2NvdW50TnVtYmVyIjoiIiwiYmFua0NvZGUiOiI5OTkiLCJpc0FjdGl2ZSI6dHJ1ZSwiY3JlYXRlZEF0IjoiMjAxNy0wMS0xNVQwMTowNDowOC4wMDBaIiwidXBkYXRlZEF0IjoiMjAxNy0wMS0xNVQwMTowNTo1MS4wMDBaIiwiZGVsZXRlZEF0IjpudWxsLCJpYXQiOjE0OTMzOTExMjMsImV4cCI6MTQ5MzM5ODMyM30.wxtD49INm0-IWtXq2SIBiXeCM2C7vb31wXJC2bWAees'})

   
    if responds.code == 200
      @payment = Payment.new(payment)
      if @payment.save
        flash[:notice] = "Payment was successful"
        redirect_to welcome_path(session[:job_id])
      end
    else
      flash[:alert] = "Payment Failed"
      render :new
       #render plain: response.body.inspect
    end
  end


  def payment_params
    params.require(:payment).permit(:card_no, :cvv, :expiry_year, :expiry_month, :amount, :firstname, :lastname, :phonenumber, :email, :recipient_bank, :recipent_account_number,  :apiKey, :redirecturl, :medium, :authoriztion, :fee)
  end
  
end
