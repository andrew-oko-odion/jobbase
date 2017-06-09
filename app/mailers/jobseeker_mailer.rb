class JobseekerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.jobseeker_mailer.notification.subject
  #

  def notification 
    @greeting = "Hi" 
    mail(to: 'hello@workgalore.com', subject: "Hello world")
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.jobseeker_mailer.job_suggestions.subject
  #
  def job_suggestions
    @greeting = "Hi"
    mail to: "to@example.org"
  end
end
