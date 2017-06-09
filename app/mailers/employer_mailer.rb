class EmployerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.employer_mailer.payment_invoice.subject
  #
  def payment_invoice
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  def notification(type)
    # Sends a mail notification to Candidate 
  end

  def campaign
  end
  
end
